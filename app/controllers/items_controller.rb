class ItemsController < PcsBaseController

  def destroy
    if @item = Item.find_by(id:params[:id])
      price = @item.price
      name = @item.name

      if pc.soul < price
        Log.danger("%sは%sを購入する%sソウルを持っていない" % [pc.name, name, price])

      else
        params = {}
        key = @item.type.underscore.split(/\//).last
        params[key] = name
        params["soul"] = pc.soul - price
        pc.update(params)
        Log.success("%sは%sを%sソウルで身に着けた" % [pc.name, name, price])
        @item.delete

      end
    end

    redirect_to :back
  end

end
