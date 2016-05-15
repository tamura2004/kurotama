class Pcs::ImagesController < Pcs::BaseController

  def new
    @images = PC_IMAGES.sample(9).map do |file|
      Pcs::Image.new(source: file)
    end
  end

  def create
    form = Pcs::Image.new(params[:pcs_image])
    pc.update(image: form.source)

    redirect_to pc
  end

end
