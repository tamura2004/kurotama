class MapsController < PcsBaseController
  def index
    map = Map.build(pc.map)
    @maps = [map.left, map, map.right]
  end

  def show
    map = Map.build(params[:name])
    @cards = []
    @cards << Cards::Battles::Map.new(map)
    @cards += Cards::Battles::Pc.build(map.pcs)
    @cards += Cards::Battles::Mob.build(map.mobs.where("hp > 0"))
    @cards += map.souls
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
