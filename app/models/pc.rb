class Pc < Character
  after_initialize :set_default_value

  private

    def you_died
      Log.danger("#{name}は死んだ")

      Items::Soul.create(name: "#{name}のソウル", soul: soul, owner: map)
      Items::Weapon.create(name: weapon, owner: map)
      Items::Shield.create(name: shield, owner: map)

      tap do |p|
        p.map = "北の不死院"
        p.hp = max_hp
        p.soul = 0
      end
      save
    end
end
