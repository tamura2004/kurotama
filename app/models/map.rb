class Map
  include ActiveModel::Model
  attr_accessor :name, :image, :left, :right

  def initialize(attributes={})
    super
    @image ||= "no_image.png"
    @right ||= Maps::Nowhere.new
    @left ||= Maps::Nowhere.new
  end

  def pcs
    Pc.where(map_name: name)
  end

end
