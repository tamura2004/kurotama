class Maps::ImagesController < ApplicationController

  def new
    id = params[:map_id]
    @map = Map.find(id)
    @images = LAND_IMAGE_FILE_PATHS.map do |file|
      Maps::Image.new(source: file, imageable_type: "Map", imageable_id: id)
    end
  end

  def create
    form = Maps::Image.new(params[:maps_image])
    map = Map.find(form.imageable_id)

    if map.image
      map.image.update(source: form.source)

    else
      Image.create(source: form.source, imageable_type: "Map", imageable_id: form.imageable_id)
    end

    redirect_to :maps
  end

end
