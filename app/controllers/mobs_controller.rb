class MobsController < PcsBaseController
  def index
  end

  def show
    @mob = Mob.find(params[:id])
  end

  def update
    if @mob = Mob.find_by(id: params[:id])
      pcs = pc.map.pcs
      mobs = pc.map.mobs

      pc.attack(@mob)

      speed = mobs.size.to_f / pcs.size

      while speed > 1
        mobs.sample.attack(pcs.sample)
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
