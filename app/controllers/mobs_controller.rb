class MobsController < PcsBaseController
  def index
  end

  def show
    @mob = Mob.find(params[:id])
  end

  def update
    @mob = Mob.find(params[:id])
    @pc = Pc.find(params[:pc_id])

    Log.info("%sは%sで%sを攻撃" % [@pc.name,@pc.weapon,@mob.fullname])

    @mob << @pc.damage
    @pc << @mob.damage

    redirect_to :back
  end
end
