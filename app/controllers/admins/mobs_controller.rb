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

    mob = Mob.new(MOBS["不死男爵"])
    mob.map = "不死院の門"
    mob.image = "mob/不死男爵.png"
    mob.save

    mob = Mob.new(MOBS["不死院のデーモン"])
    mob.map = "不死院の門"
    mob.image = "mob/不死院のデーモン.png"
    mob.save

    Npc.delete_all
    npc = Npc.create do |p|
      p.name = "鍛冶屋レニガッツ"
      p.map = "北の不死院"
      p.image = "pc/026.png"
    end

    redirect_to :new_menu
  end

  def delete_all
    Mob.delete_all
    redirect_to :new_menu
  end
end
