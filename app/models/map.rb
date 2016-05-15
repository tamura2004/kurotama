class Map
  include ActiveModel::Model
  attr_accessor :name, :image, :left, :right

  def initialize(attributes={})
    super
    @image ||= "no_image.png"
    @right ||= ::Maps::Nowhere.new
    @left ||= ::Maps::Nowhere.new
  end

  def pcs
    ::Pc.where(map: name)
  end

  def traps
    ::Items::Trap.where(owner: name)
  end

  def mobs
    ::Mob.where(map: name)
  end

  def souls
    ::Items::Soul.where(owner: name)
  end

end
