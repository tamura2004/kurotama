class Pc < Character
  after_initialize :set_default_value

  private

    def you_died
      Log.danger("#{name}は死んだ")
      delete
    end
end
