class Mobs::Label
  include ActiveModel::Model
  delegate :name, to: :mob
  attr_accessor :mob

  def self.build(mobs)
    mobs.map do |mob|
      new(mob)
    end
  end

  def initialize(mob)
    @mob = mob
  end
end

