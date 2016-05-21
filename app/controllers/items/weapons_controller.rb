class Items::WeaponsController < PcsBaseController

  def destroy
    if @weapon = Items::Weapon.find_by(id:params[:id])
      price = @weapon.price
      name = @weapon.name

      if pc.soul < price
        Log.danger("%sは%sを購入する%sソウルを持っていない" % [pc.name, name, price])

      else
        pc.update(weapon: name, soul: pc.soul - price)
        Log.success("%sは%sを%sソウルで装備した" % [pc.name, name, price])
        @weapon.delete

      end
    end

    redirect_to :back
  end

end
