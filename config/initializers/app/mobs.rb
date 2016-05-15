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
  ability: [30,30,5,5,5,5]
  level: 10
  soul: 1000
  weapon: グレートソード
  shield: タワーシールド
  armor: なし
  spell: なし
  ring: なし
EOD

MOBS.keys.each do |mob|
  MOBS[mob]["name"] = mob
end
