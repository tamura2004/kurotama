class PcNameFormsController < ApplicationController
  def new
    @names = GivenNameMaster.sample(6).map do |name|
      PcNameForm.new(name: name)
    end
  end

  def create
    pc = Pc.create(name: params[:pc_name_form][:name])
    pc.create_image(source: PC_IMAGE_FILE_PATHS.sample)

    session[:pc_id] = pc.id
    redirect_to :pcs
  end
end
