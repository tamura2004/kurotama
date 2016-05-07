class TravelsController < ApplicationController

  def create
    travel = Travel.new(travel_param)
    pc = travel.pc
    map = travel.map

    case travel.name

    when "left", "right"
      pc.update(map: map)
      redirect_to pc

    when "center"
      pc.build_moves
      @pc = pc
      render "pcs/show"

    end

  end

  private

    def travel_param
      params.require(:travel).permit(:pc_id,:map_id,:name)
    end

end
