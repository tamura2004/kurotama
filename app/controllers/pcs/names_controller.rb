class Pcs::NamesController < ApplicationController
  def new
    @names = GivenNameMaster.sample(6).map do |name|
      Pcs::Name.new(name: name)
    end
  end

  def create
    pc = Pc.create(name: params[:pcs_name][:name])
    pc.create_image(source: PC_IMAGE_FILE_PATHS.sample)

    session[:pc_id] = pc.id
    redirect_to :pcs
  end
end
