class MoveFormsController < ApplicationController
  def new
    @moves = build_moves
  end

  def create
    form = MoveForm.new(params[:move_form])

    case form.name

    when "左", "右"
      puts "-"*100
      p form
      p pc

      pc.update(map_id: form.map_id)
      p pc
      redirect_to :new_move_form

    when "中央"
      redirect_to :new_action_form

    else
      raise "異常な移動フォーム名"

    end
  end

  private

    def build_moves
      map = pc.map
      [
        MoveForm.new(map: map.left , name: "左"  ),
        MoveForm.new(map: map      , name: "中央"),
        MoveForm.new(map: map.right, name: "右" )
      ]
    end

end
