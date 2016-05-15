class MobsController < Pcs::BaseController
  def index
  end

  def show
    @mob = Mob.find(params[:id])
  end

  def update
    @mob = Mob.find(params[:id])
    @mob.sub_from_hp(33)
    redirect_to :back, alert: "#{@mob.name}#{@mob.id}に33ダメージ"
  end
end
