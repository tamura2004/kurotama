class Pcs::MovesController < ApplicationController
  def new
    @moves = build_moves
    Mob.create(name: "亡者", hp: 180, soul:30, weapon: "折れた直剣", armor: "全裸", map_id: rand(20)) if rand < 0.3
  end

  def create
    form = Pcs::Move.new(params[:pcs_move])

    case form.name

    when "左", "右"
      pc.update(map_id: form.map_id)
      redirect_to :new_pcs_move

    when "中央"
      redirect_to :new_pcs_action

    end
  end

  private

    def build_moves
      map = pc.map
      [
        Pcs::Move.new(map: map.left , name: "左"  ),
        Pcs::Move.new(map: map      , name: "中央"),
        Pcs::Move.new(map: map.right, name: "右" )
      ]
    end

end
