class Character < ActiveRecord::Base
  before_validation :check_hp, :recover_fp
  after_initialize :set_default_value

  def ability=(ability)
    str,dex,con,int,wis,cha = ability

    self.str ||= str
    self.dex ||= dex
    self.con ||= con
    self.int ||= int
    self.wis ||= wis
    self.cha ||= cha
  end

  def max_hp
    con * 40
  end

  def max_fp
    dex * 40
  end

  def sub_from_fp(damage)
    if damage > fp
      update(fp: 0)
      damage - fp

    else
      update(fp: fp - damage)
      0
    end
  end

  def sub_from_hp(damage)
    damage = sub_from_fp(damage) if shield != "素手" && shield != "なし"
    update(hp: hp - damage)
  end

  private

    def check_hp
      you_died if hp <= 0
    end

    def recover_fp
      if changed.include?("map") && fp < max_fp
        self.fp = [fp + dex * 10, max_fp].min
      end
    end

    def set_default_value
      JOBS["持たざるもの"].each do |key,value|
        if key == "ability"
          self.ability = value
        else
          self[key] ||= value
        end
      end

      self.name ||= GIVEN_NAMES.sample
      self.map ||= "北の不死院"
      self.image ||= PC_IMAGES.sample

      self.soul ||= 0
      self.hp ||= max_hp
      self.fp ||= max_fp
    end
end