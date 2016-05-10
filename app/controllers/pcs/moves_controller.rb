class Pcs::MovesController < ApplicationController
  def new
    @moves = build_moves
    Mob.create(name: "亡者", hp: 180, soul:30, weapon: "折れた直剣", armor: "全裸", map_id: rand(20)) if rand < 0.3
  end

  def create
    form = Pcs::Move.new(params[:pcs_move])

    if form.map_id.to_i == pc.map.id
      redirect_to :new_pcs_action

    else
      pc.update(map_id: form.map_id)
      redirect_to :maps

    end
  end

  private

    def build_moves
      map = pc.map
      [
        Pcs::Move.create(map: map.left  ),
        Pcs::Move.create(map: map      ),
        Pcs::Move.create(map: map.right)
      ]
    end

end
