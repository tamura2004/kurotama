require "yaml"

MOBS = YAML.load (<<EOD)
---
亡者兵:
  ability: [5,5,5,5,5,5]
  level: 1
  soul: 100
  weapon: 折れた短剣
  shield: なし
  armor: なし
  spell: なし
  ring: なし
スケルトン:
  ability: [10,10,10,10,10,10]
  level: 10
  soul: 1000
  weapon: グレートソード
  shield: タワーシールド
  armor: なし
  spell: なし
  ring: なし
不死男爵:
  ability: [20,30,30,10,10,10]
  level: 20
  soul: 10000
  weapon: グレートソード
  shield: タワーシールド
  armor: なし
  spell: なし
  ring: なし
不死院のデーモン:
  ability: [20,30,50,10,10,10]
  level: 30
  soul: 20000
  weapon: グレートソード
  shield: タワーシールド
  armor: なし
  spell: なし
  ring: なし
EOD

MOBS.keys.each do |mob|
  MOBS[mob]["name"] = mob
end
