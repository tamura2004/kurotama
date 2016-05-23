class MapsController < PcsBaseController
  def index
    # Map.includes(:left)
    #   .includes(:right)
    #   .includes(:pcs)
    #   .includes(:mobs)
    #   .includes(:weapons)
    #   .includes(:shields)
    #   .includes(:souls)
    #   .includes(:level_ups)
    @maps = [
      pc.map.left || Maps::Nowhere.new,
      pc.map,
      pc.map.right || Maps::Nowhere.new
    ]
  end

  def show
    map = Map.find(params[:id])
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
    map = Map.find(params[:id])

    if map.id == pc.map_id
      redirect_to map_path(map)

    else
      pc.update(map_id: map.id)
      redirect_to :maps
    end

  end
end
