class Pc < ActiveRecord::Base
  has_many :travels
  has_many :moves
  belongs_to :map

  def build_travels
    travels.build(map: map.left , name: "left"  )
    travels.build(map: map      , name: "center")
    travels.build(map: map.right, name: "right" )
  end

  def build_moves
    moves.build(name: "調べる")
    moves.build(name: map.path.name + "へ行く", map_id: map.path.id) if map.path
    map.paths.each do |path|
      moves.build(name: path.name + "へ行く", map_id: path.id)
    end

  end

end
