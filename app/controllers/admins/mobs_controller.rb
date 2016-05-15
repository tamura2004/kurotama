class Admins::MobsController < ApplicationController
  def setup
    Mob.delete_all
    5.times do
      mob = Mob.new(MOBS["亡者兵"])
      mob.map = "北の不死院"
      mob.image = "mob/亡者兵.png"
      mob.save
    end
    redirect_to :new_menu
  end

  def delete_all
    Mob.delete_all
    redirect_to :new_menu
  end
end
