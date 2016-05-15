class MapsController < PcsBaseController
  def index
    map = MAPS[pc.map]
    @maps = [map.left, map, map.right]
  end

  def show
    map = MAPS[params[:name]]
    @cards = []
    @cards << map
    @cards += map.pcs
    @cards += map.mobs.where("hp > 0")
    @cards += map.souls
  end

  def update
    name = params[:name]
    map = MAPS[name]

    if name == pc.map
      redirect_to map_path(name: name)

    else
      pc.update(map: name)
      redirect_to :maps
    end

  end
end
