class Pc < Character

  after_initialize :set_default_value

  def short_label
    "#{name}/#{race_name}/#{job_name}/#{level}lv/hp#{hp}/魂#{soul}"
  end

  def map
    MAPS[map_name]
  end

  def rank
    %w{奴隷 平民 騎士 郷士 男爵 子爵 伯爵 侯爵 公爵 王 皇帝 神}[cha/10]
  end

  def max_hp
    con * 40
  end

  def max_fp
    (str + dex) * 4
  end

  def self.create_with_job(job)
    create do |pc|
      pc.job_name = job["name"]
      pc.level = job["level"]
      pc.weapon_name = job["weapon"]
      pc.shield_name = job["shield"]
      pc.armor_name = job["armor"]

      str,dex,con,int,wis,cha = job["ability"]

      pc.str = str
      pc.dex = dex
      pc.con = con
      pc.int = int
      pc.wis = wis
      pc.cha = cha

      pc.hp = con * 40
      pc.fp = (str+dex)*4
    end
  end

  private

    def set_default_value
      self.name ||= "名無し"
      self.map_name ||= "北の不死院"
      self.image ||= "land/no_image.png"

      self.job_name ||= "持たざるもの"
      self.race_name ||= "亡者"

      self.weapon_name ||= "素手"
      self.shield_name ||= "素手"
      self.armor_name ||= "全裸"
      self.spell_name ||= "なし"
      self.ring_name ||= "なし"

      self.soul ||= 0
      self.level ||= 1

      self.str ||= 8
      self.dex ||= 8
      self.con ||= 8
      self.int ||= 8
      self.wis ||= 8

      self.hp ||= con * 40
      self.fp ||= str * 4

    end
end
