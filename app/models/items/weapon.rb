class Items::Weapon < Item

  def weapon
    WEAPONS[name]
  end

  def damage
    weapon["ダメージ"]
  end

  def price
    WEAPONS[name]["費用"]
  end

end

