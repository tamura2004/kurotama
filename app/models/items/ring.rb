class Items::Ring < Item
  after_initialize :set_default_value

  def set_default_value
    self.image ||= "item/リング.png"
  end
end

