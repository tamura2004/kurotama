class Mob < Character
  def fullname
    "#{name}#{((id % 26) + 65).chr}"
  end

  def you_died
    Log.info("%sを倒した" % fullname)
  end
end
