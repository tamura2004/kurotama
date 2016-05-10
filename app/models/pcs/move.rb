class Pcs::Move
  include ActiveModel::Model
  include Parameterable

  attr_accessor :map
  # delegate :attributes, to: :map

  def self.create(map)
    if map
      Pcs::Move.new(map)
    else
      Maps::Nowhere
    end
  end

  def initialize(map)
    raise error "map is nil!" unless map
    @map = map
  end

  def map=(obj)
    self.map_id = obj.try(:id)
  end

  def attributes
    { map_id: @map.id }
  end


end
