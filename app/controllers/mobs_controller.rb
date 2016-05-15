class MobsController < PcsBaseController
  def index
  end

  def show
    @mob = Mob.find(params[:id])
  end

  def update
    @mob = Mob.find(params[:id])
    @pc = Pc.find(params[:pc_id])
    damage = erand(@pc.damage)

    message = "%sは%sを%sで攻撃。%sダメージ！"
    values = [@pc.name, @mob.fullname, @pc.weapon, damage]
    Log.info(message % values)

    @mob << damage
    @pc << erand(@mob.damage)

    redirect_to :back
  end
end
