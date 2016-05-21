class Admins::MobsController < ApplicationController
  def setup
    Mob.delete_all

    10.times do
      mob = Mob.new(MOBS["亡者兵"])
      mob.map = "不死院の広間"
      mob.image = "mob/亡者兵.png"
      mob.save
    end

    3.times do
      mob = Mob.new(MOBS["スケルトン"])
      mob.map = "不死院の階段"
      mob.image = "mob/スケルトン.png"
      mob.save
    end

    mob = Mob.new(MOBS["不死院のデーモン"])
    mob.map = "不死院の門"
    mob.image = "mob/不死院のデーモン.png"
    mob.save

    Items::Weapon.delete_all
    WEAPONS.keys.each do |name|
      Items::Weapon.create do |weapon|
        weapon.name = name
        weapon.owner = "鍛冶師アンドレイ"
      end
    end

    Items::Shield.delete_all
    SHIELDS.keys.each do |name|
      Items::Shield.create do |shield|
        shield.name = name
        shield.owner = "鍛冶師レニガッツ"
      end
    end

    Items::LevelUp.delete_all
    %w(筋力up 敏捷up 体力up 理力up 信仰up 人間性up).each do |name|
      Items::LevelUp.create do |level_up|
        level_up.name = name
        level_up.owner = "火防女アナスタシア"
      end
    end

    Pc.find_each do |pc|
      pc.update(hp: pc.max_hp, fp: pc.max_fp)
    end

    redirect_to :maps
  end

  def delete_all
    Mob.delete_all
    redirect_to :new_menu
  end
end
