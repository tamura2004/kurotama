class Character < ActiveRecord::Base
  before_validation :recover_fp
  after_initialize :set_default_value
  after_commit :check_hp

  belongs_to :map
  belongs_to :bonefire, class_name: "Map"

  # アイテム類
  has_many :items, as: :owner

  Item.each_type do |single,pluralize,type|
    has_many pluralize, as: :owner, class_name: type
    define_method single do
      send(pluralize).find_by(equiped: true)
    end
    define_method "#{single}=" do |item_name|
      send(pluralize).update_all(equiped: false)
      send(pluralize).build(name: item_name, equiped: true)
    end
  end

  def map=(name)
    if map = Map.find_by(name: name)
      super(map)
    end
  end

  def ability=(ability)
    str,dex,con,int,wis,cha = ability

    self.str ||= str
    self.dex ||= dex
    self.con ||= con
    self.int ||= int
    self.wis ||= wis
    self.cha ||= cha
  end

  def ability
    [str,dex,con,int,wis,cha]
  end

  def max_hp
    con * 40
  end

  def max_fp
    dex * 40
  end

  def attack(other)
    dm = erand(damage)
    message = sprintf("%sは%sを%sで攻撃。%sダメージ！",name,other.name,weapon,dm)
    case other
    when Mob
      Log.success(message)
    when Pc
      Log.danger(message)
    end
    other.sub_from_hp(dm)
  end

  def damage

    data = WEAPONS[weapon.name]
    ability.zip(data["補正"]).inject(data["ダメージ"]) do |a,b|
      a += b[0] * b[1]
    end
  end

  def <<(damage)
    sub_from_hp(damage)
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
    damage = sub_from_fp(damage) if shield != "なし"
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
        case key
        when "ability"
          self.ability = value

        when "level"
          self.level = value

        else
          # self[key] ||= value

        end
      end

      self.name ||= GIVEN_NAMES.sample
      self.map ||= "北の不死院"
      self.bonefire ||= map
      self.image ||= PC_IMAGES.sample

      self.soul ||= 0
      self.hp ||= max_hp
      self.fp ||= max_fp
    end

    def erand(n)
      (-n*Math.log(rand)).to_i
    end

end