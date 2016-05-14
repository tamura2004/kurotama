class Pcs::Bars::Fp
  include ActiveModel::Model
  attr_accessor :pc
  delegate :fp, :max_fp, to: :pc

  MAX_WIDTH = 400

  def initialize(pc,attributes={})
    super(attributes)
    @pc ||= pc
  end

  def max
    max_fp * 100 / MAX_WIDTH
  end

  def now
    fp * 100 / max_fp
  end
end