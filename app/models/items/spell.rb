class Items::Spell < Item
  after_initialize :set_default_value

  def set_default_value
    self.image ||= "item/021.png"
  end
end

