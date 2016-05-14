class Pcs::Bars::Hp
  include ActiveModel::Model
  attr_accessor :pc
  delegate :hp, :max_hp, to: :pc

  MAX_WIDTH = 2000

  def initialize(pc,attributes={})
    super(attributes)
    @pc ||= pc
  end

  def max
    max_hp * 100 / MAX_WIDTH
  end

  def now
    hp * 100 / max_hp
  end
end