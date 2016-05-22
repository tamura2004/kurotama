class Map < ActiveRecord::Base
  belongs_to :right, class_name: "Map"
  belongs_to :left, class_name: "Map"

  has_many :rights, class_name: "Map", foreign_key: :right_id
  has_many :lefts, class_name: "Map", foreign_key: :left_id

  # def self.build(name)
  #   name ? new(name) : Maps::Nowhere.new
  # end

  # def initialize(name)
  #   @name = name
  # end

  # def pcs
  #   Pc.where(map: name)
  # end

  # def traps
  #   Items::Trap.where(owner: name)
  # end

  # def mobs
  #   Mob.where(map: name)
  # end

  # def items
  #   @items ||= Item.where(owner: name).to_a
  # end

  # def souls
  #   items.select{|i|i.type == "Items::Soul"}
  # end

  # def weapons
  #   items.select{|i|i.type == "Items::Weapon"}
  # end

  # def shields
  #   items.select{|i|i.type == "Items::Shield"}
  # end

  # def level_ups
  #   items.select{|i|i.type == "Items::LevelUp"}
  # end

  # def image
  #   "land/#{name}.png"
  # end

end
