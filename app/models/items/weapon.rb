class Items::Weapon < Item
  after_initialize :set_default_value

  def weapon
    WEAPONS[name]
  end

  def damage
    weapon["ダメージ"]
  end


  def set_default_value
    self.image ||= "item/ソード.png"
  end
end

