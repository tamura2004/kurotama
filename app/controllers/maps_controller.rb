class MapsController < ApplicationController
  def index
    @maps = [pc.map.left, pc.map, pc.map.right]
  end

  def update
    id = params[:map][:id].to_i

    if pc.map_id == id
      redirect_to :new_pcs_action

    else
      pc.update(map_id: id)
      redirect_to :maps

    end
  end

end
