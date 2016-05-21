class Items::WeaponsController < PcsBaseController

  def destroy
    if @weapon = Items::Weapon.find_by(id:params[:id])

      if pc.soul < weapon.price
        Log.danger("%sは%sを購入するソウルを持っていない" % [pc.name, @name])

      else
        pc.update(weapon: @name, soul: pc.soul - weapon.price)
        Log.success("%sは%sを%sソウルで装備した" % [pc.name, @name, weapon.price])
        @weapon.delete

      end
    end

    redirect_to :back
  end

end
