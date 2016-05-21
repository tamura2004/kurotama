class Items::LevelUp < Item
  after_initialize :set_default_value

  def price
    100
  end

  def set_default_value
    self.image ||= "item/001.png"
  end
end

