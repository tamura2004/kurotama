class Items::Shield < Item
  after_initialize :set_default_value

  def price
    SHIELDS[name]["費用"]
  end

  def set_default_value
    self.image ||= "item/シールド.png"
  end
end

