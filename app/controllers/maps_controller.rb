class MapsController < PcsBaseController
  def index
    @maps = [
      pc.map.left || Maps::Nowhere.new,
      pc.map,
      pc.map.right || Maps::Nowhere.new
    ]
  end

  def show
    map = Map.build(params[:name])
    if map.name == "篝火"
      Log.success "篝火を使った"
      redirect_to :admins_mobs_setup

    else
      @cards = []
      @cards << Cards::Battles::Map.new(map)
      @cards += Cards::Battles::Pc.build(map.pcs)
      @cards += Cards::Battles::Mob.build(map.mobs.where("hp > 0"))
      @cards += map.items
    end
  end

  def update
    name = params[:name]
    map = Map.build(name)

    if name == pc.map
      redirect_to map_path(name: name)

    else
      pc.update(map: name)
      redirect_to :maps
    end

  end
end
