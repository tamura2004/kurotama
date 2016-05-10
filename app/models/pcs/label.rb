class Pcs::Label
  include ActiveModel::Model
  include Parameterable
  delegate :attributes, :name, to: :pc

  attr_accessor :pc
  # delegate :attributes, to: :map

  def self.build(pcs)
    pcs.map do |pc|
      new(pc)
    end
  end

  def initialize(pc)
    @pc = pc
  end

end
