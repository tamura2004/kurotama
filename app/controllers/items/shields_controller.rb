class Items::ShieldsController < PcsBaseController

  def destroy
    if @shield = Items::Shield.find_by(id:params[:id])
      price = @shield.price
      name = @shield.name

      if pc.soul < price
        Log.danger("%sは%sを購入する%sソウルを持っていない" % [pc.name, name, price])

      else
        pc.update(shield: name, soul: pc.soul - price)
        Log.success("%sは%sを%sソウルで装備した" % [pc.name, name, price])
        @shield.delete

      end
    end

    redirect_to :back
  end

end
