class Map
  include ActiveModel::Model
  attr_accessor :name

  def self.build(name)
    name ? new(name) : Maps::Nowhere.new
  end

  def initialize(name)
    @name = name
  end

  def right
    Map.build MAPS[name]["right"]
  end

  def left
    Map.build MAPS[name]["left"]
  end

  def pcs
    Pc.where(map: name)
  end

  def traps
    Items::Trap.where(owner: name)
  end

  def mobs
    Mob.where(map: name)
  end

  def souls
    Items::Soul.where(owner: name)
  end

  def npcs
    Npc.where(map: name)
  end

  def image
    "land/#{name}.png"
  end

end
