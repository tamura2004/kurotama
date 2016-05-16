class Bars::Fp < ModelWrapper
  MAX_WIDTH = 2000

  def max
    max_fp * 100 / MAX_WIDTH
  end

  def now
    fp * 100 / max_fp
  end
end