class Items::Armor < Item
  after_initialize :set_default_value

  def set_default_value
    self.image ||= "item/アーマー.png"
  end
end

