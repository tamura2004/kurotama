class Map < ActiveRecord::Base
  belongs_to :path, class_name: Map, foreign_key: :map_id
  has_many :paths, class_name: Map, foreign_key: :map_id
  has_many :mobs
  has_one :image, as: :imageable

  def left
    Map.where(no: no).where("id < ?", id).last
  end

  def right
    Map.where(no: no).where("id > ?", id).first
  end

end
