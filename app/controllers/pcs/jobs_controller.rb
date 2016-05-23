class Pcs::JobsController < ApplicationController
  def new
    @jobs = Pcs::Job.all
  end

  def create
    pc = PcFactory.create_from_job_name(params[:pcs_job][:name])

    session[:pc_id] = pc.id

    redirect_to pc
  end
end
