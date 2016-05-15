class Items::Label
  include ActiveModel::Model
  delegate :name, to: :item
  attr_accessor :item

  def self.build(items)
    items.map do |item|
      new(item)
    end
  end

  def initialize(item)
    @item = item
  end
end

