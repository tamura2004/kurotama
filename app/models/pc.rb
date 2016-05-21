class Pc < Character
  after_initialize :set_default_value

  private

    def you_died
      Log.danger("#{name}は死んだ")
      update do |pc|
        pc.map = "北の不死院"
      end
    end
end
