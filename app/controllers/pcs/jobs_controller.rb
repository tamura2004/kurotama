class Pcs::JobsController < ApplicationController
  def new
    @jobs = Pcs::Job.all
  end

  def create
    job = JobMaster[params[:pcs_job][:name]]

    pc = Pc.create_with_job(job)
    session[:pc_id] = pc.id

    redirect_to pc
  end
end
