class Pc < Character
  after_initialize :set_default_value

  private

    def you_died
      self.map = "巨人墓場"
      self.hp = max_hp
      self.type = "Mob"
      self.soul = 0
    end

end
