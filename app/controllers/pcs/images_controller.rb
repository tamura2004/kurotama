class Pcs::ImagesController < ApplicationController

  def new
    id = params[:pc_id]
    @pc = Pc.find(id)
    @images = PC_IMAGE_FILE_PATHS.sample(9).map do |file|
      Pcs::Image.new(source: file)
    end
  end

  def create
    form = Pcs::Image.new(params[:pcs_image])
    pc.update(image: form.source)

    redirect_to pc
  end

end
