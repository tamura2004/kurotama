class Pcs::ImagesController < ApplicationController

  def new
    id = params[:pc_id]
    @pc = Pc.find(id)
    @images = PC_IMAGE_FILE_PATHS.sample(9).map do |file|
      Pcs::Image.new(source: file, imageable_type: "Pc", imageable_id: id)
    end
  end

  def create
    form = Pcs::Image.new(params[:pcs_image])
    pc = Pc.find(form.imageable_id)

    if pc.image
      pc.image.update(source: form.source)

    else
      Image.create(source: form.source, imageable_type: "Pc", imageable_id: form.imageable_id)
    end

    redirect_to :pcs
  end

end
