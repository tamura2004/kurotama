class Items::ShieldsController < PcsBaseController

  def destroy
    if @shield = Items::Shield.find_by(id:params[:id])

      if pc.soul < shield.price
        Log.danger("%sは%sを購入するソウルを持っていない" % [pc.name, @name])

      else
        pc.update(shield: @name, soul: pc.soul - shield.price)
        Log.success("%sは%sを%sソウルで装備した" % [pc.name, @name, shield.price])
        @shield.delete

      end
    end

    redirect_to :back
  end

end
