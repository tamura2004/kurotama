class Pcs::JobsController < ApplicationController
  def new
    @jobs = Pcs::Job.all
  end

  def create
    pc = PcFactory.create_from_job_name(params[:pcs_job][:name])

    # pc = Pc.create do |pc|
    #   job.each do |key,value|
    #     case key
    #     when "ability"
    #       pc.ability = value

    #     when "level"
    #       pc.level = value

    #     else
    #       pc.send(key.pluralize) << "items/#{key}".classify.constantize.create {|item|
    #         item.name = value
    #         item.equiped = true
    #       }

    #     end
    #   end
    # end

    session[:pc_id] = pc.id

    redirect_to pc
  end
end
