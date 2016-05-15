class Mob < Character
  def fullname
    "#{name}#{((id % 26) + 65).chr}"
  end

  def you_died
    Items::Soul.create_from_mob(self)
    Log.info("%sを倒した" % fullname)
    delete
  end
end
