class MovesController < ApplicationController

  def create
    move = Move.new(move_param)

    case move.name
    when "調べる"
      redirect_to pc

    when /へ行く/
      pc.update(map_id: move.map_id)
      redirect_to pc

    end
  end

  private

    def move_param
      params.require(:move).permit(:name,:pc_id,:mob_id,:boss_id,:item_id,:map_id)
    end

end
