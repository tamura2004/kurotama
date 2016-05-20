class Items::Shield < Item
  after_initialize :set_default_value

  def set_default_value
    self.image ||= "item/シールド.png"
  end
end

