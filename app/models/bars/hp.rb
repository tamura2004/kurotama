class Bars::Hp < ModelWrapper
  MAX_WIDTH = 2000

  def max
    max_hp * 100 / MAX_WIDTH
  end

  def now
    hp * 100 / max_hp
  end
end