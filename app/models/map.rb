class Map < ActiveRecord::Base
  include Parameterable

  belongs_to :parent, class_name: Map, foreign_key: :map_id
  has_many :paths, class_name: Map, foreign_key: :map_id
  has_many :mobs
  has_many :pcs
  has_one :image, as: :imageable

  def left
    Map.where(no: no).where("id < ?", id).last || Maps::Nowhere.new
  end

  def right
    Map.where(no: no).where("id > ?", id).first || Maps::Nowhere.new
  end

end
