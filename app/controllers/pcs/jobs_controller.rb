class Pcs::JobsController < ApplicationController
  def new
    @jobs = JobMaster.keys.map do |name|
      Pcs::JobsController.new(name: name)
    end
  end

  def create
    job = JobMaster[params[:pc_job_form][:name].to_sym]
    pc = Pc.create(job: job.name)

    case form.name

    when "左", "右"
      pc.update(map_id: form.map_id)
      redirect_to :new_pcs_move

    when "中央"
      redirect_to :new_pcs_action

    end
  end

  private

    def build_moves
      map = pc.map
      [
        MoveForm.new(map: map.left , name: "左"  ),
        MoveForm.new(map: map      , name: "中央"),
        MoveForm.new(map: map.right, name: "右" )
      ]
    end

end
