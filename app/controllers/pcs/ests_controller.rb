class Pcs::EstsController < PcsBaseController

  def create
    pc.update hp: [pc.hp + 200, pc.max_hp].min
    pc.update fp: pc.max_fp
    redirect_to :back
  end

end
