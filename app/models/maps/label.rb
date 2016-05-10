class Maps::Label
  include ActiveModel::Model
  include Parameterable
  delegate :attributes, :name, to: :map

  attr_accessor :map
  # delegate :attributes, to: :map

  def self.build(maps)
    maps.map do |map|
      new(map)
    end
  end

  def initialize(map)
    @map = map
  end

end
