class MapsController < ApplicationController
  def index
    # render layout: false
    @maps = Map.all.includes(:image)
  end
end
