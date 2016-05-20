class Items::ShieldsController < PcsBaseController

  def new
    @shields = SHIELDS.keys.map do |name|
      Items::Shield.new(name: name)
    end
  end

  def create
    if @name = params[:name]
      price = SHIELDS[@name]["費用"]
      if pc.soul < price
        Log.danger("%sは%sを購入するソウルを持っていない" % [pc.name, @name])
      else
        pc.update(shield: @name, soul: pc.soul - price)
        Log.success("%sは%sを購入した" % [pc.name, @name])
      end
    end
    redirect_to :back
  end

  def destroy
    if @name = params[:name]
      pc.update(shield: @name)
      Log.success("%sは%sを拾った" % [pc.name, @name])
    end
    redirect_to :back
  end
end
