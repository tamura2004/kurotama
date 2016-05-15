class MapsController < Pcs::BaseController
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
  end

  def update
    name = params[:name]
    map = MAPS[name]

    if name == pc.map
      redirect_to map_path(name: name)

    else
      pc.update(map: name)
      flash[:alert] = "#{pc.name}に1000ダメージ"
      pc.sub_from_hp(1000)

      map.traps.each do |trap|
        case trap.name
        when "転がる石の罠"
          damage = erand(100)
          flash[:alert] = "#{trap.name}! #{pc.name}に#{damage}ダメージ"
          pc.sub_from_hp(damage)
        end
      end

      redirect_to :maps
    end

  end
end
