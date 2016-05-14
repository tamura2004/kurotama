require "pp"
class MapsController < ApplicationController
  def index
    @maps = [pc.map.left, pc.map, pc.map.right]
  end

  def update
    name = params[:name]

    if name == pc.map_name
      redirect_to :new_pcs_action

    else
      pc.update(map_name: name)
      redirect_to :maps
    end

  end
end
