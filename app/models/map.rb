class Map < ActiveRecord::Base
  belongs_to :right, class_name: "Map"
  belongs_to :left, class_name: "Map"

  has_many :rights, class_name: "Map", foreign_key: :right_id
  has_many :lefts, class_name: "Map", foreign_key: :left_id

  has_many :pcs
  has_many :mobs

  has_many :items, as: :owner
  has_many :souls, class_name: "Items::Soul", as: :owner
  has_many :weapons, class_name: "Items::Weapon", as: :owner
  has_many :shields, class_name: "Items::Shield", as: :owner
  has_many :level_ups, class_name: "Items::LevelUp", as: :owner
end
