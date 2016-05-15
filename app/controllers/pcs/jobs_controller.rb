class Pcs::JobsController < ApplicationController
  def new
    @jobs = Pcs::Job.all
  end

  def create
    job = JOBS[params[:pcs_job][:name]]

    pc = Pc.create(job)
    session[:pc_id] = pc.id

    redirect_to pc
  end
end
