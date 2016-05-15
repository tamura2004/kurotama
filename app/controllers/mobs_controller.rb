class MobsController < PcsBaseController
  def index
  end

  def show
    @mob = Mob.find(params[:id])
  end

  def update
    if @mob = Mob.find_by(id: params[:id])

      damage = erand(pc.damage)

      message = "%sは%sを%sで攻撃。%sダメージ！"
      values = [pc.name, @mob.fullname, pc.weapon, damage]
      Log.success(message % values)

      @mob << damage
      pc << erand(@mob.damage)

    else
      Log.warning("モブは誰かに倒された")
    end

    redirect_to :back
  end
end
