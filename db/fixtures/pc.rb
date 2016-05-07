Pc.seed do |s|
  s.id = 0
  s.name = "bob"
  s.soul = 1000
  s.hp = 100
  s.fp = 100
  s.mp = 100
  s.map_id = 0
end

MobBook.seed do |s|
  s.id = 0
  s.name = "亡者"
  s.hp = 10
  s.soul = 100
  s.attack = 10
  s.defence = 5
  s.speed = 5
end

20.times do
  Mob.seed do |s|
    s.mob_book_id = 0
    s.map_id = rand(20)
    s.hp = MobBook.find(0).hp
  end
end

