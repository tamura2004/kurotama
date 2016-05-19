class MobsController < PcsBaseController
  def index
  end

  def show
    @mob = Mob.find(params[:id])
  end

  def update
    if @mob = Mob.find_by(id: params[:id])
      pcs = Pc.where(map: pc.map)
      reds = Pc.where(ring: "赤目の指輪")
      mobs = Mob.where(map: pc.map)

      pc.attack(@mob)

      speed = mobs.size.to_f / pcs.size

      while speed > 1
        if reds.present?
          mobs.sample.attack(reds.sample)
        else
          mobs.sample.attack(pcs.sample)
        end
        speed -= 1
      end

      if speed > rand
        mobs.sample.attack(pcs.sample)
      end

    else
      Log.warning("モブは誰かに倒された")
    end

    redirect_to :back
  end
end
