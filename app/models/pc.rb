class Pc < ActiveRecord::Base
  # has_many :travels
  belongs_to :map
  has_one :image, as: :imageable

  after_initialize :set_default_value

  def short_label
    "#{name}/#{race}/#{job}/#{level}lv/hp#{hp}/魂#{soul}"
  end

  private

    def set_default_value
      self.job ||= "持たざるもの"
      self.race ||= "亡者"

      self.weapon ||= "素手"
      self.shield ||= "素手"
      self.armor ||= "全裸"
      self.ring ||= "なし"
      self.item ||= "なし"

      self.map_id ||= 0

      self.soul ||= 0
      self.level ||= 1

      self.str ||= 8
      self.dex ||= 8
      self.con ||= 8
      self.int ||= 8
      self.wis ||= 8
      self.cha ||= 8

      self.hp ||= con * 40
      self.fp ||= str * 4
      self.mp ||= int * 4

      self.est ||= 0
    end
end
