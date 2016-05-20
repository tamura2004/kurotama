require "yaml"

JOBS = YAML.load (<<EOD)
---
騎士:
  ability: [14,9,18,6,14,15]
  level: 1
  weapon: ブロードソード
  shield: 戦士の円盾
  armor: 騎士の鎧
  spell: なし
  ring: なし
戦士:
  ability: [18,16,16,6,6,6]
  level: 1
  weapon: ロングソード
  shield: 壊れかけの木盾
  armor: ハードレザーアーマー
  spell: なし
  ring: なし
放浪者:
  ability: [8,18,14,16,9,12]
  level: 7
  weapon: シミター
  shield: バックラー
  armor: ハードレザーアーマー
  spell: なし
  ring: なし
盗人:
  ability: [9,15,9,6,11,3]
  level: 5
  weapon: 盗賊の短刀
  shield: 壊れかけの木盾
  armor: ハードレザーアーマー
  spell: なし
  ring: なし
山賊:
  ability: [18,7,15,8,10,5]
  level: 5
  weapon: バトルアクス
  shield: 戦士の円盾
  armor: ハードレザーアーマー
  spell: なし
  ring: なし
狩人:
  ability: [5,14,11,9,9,7]
  level: 7
  weapon: ショートボウ
  shield: スモールレザーシールド
  armor: レザーアーマー
  spell: なし
  ring: なし
魔術師:
  ability: [6,8,11,18,14,12]
  level: 5
  weapon: 魔術師の杖
  shield: 素手
  armor: 魔術師のコート
  spell: ソウルの槍
  ring: なし
呪術師:
  ability: [8,8,12,16,8,18]
  level: 6
  weapon: 呪術の火
  shield: スモールレザーシールド
  armor: ぼろ布のローブ
  spell: 大火球
  ring: なし
聖職者:
  ability: [12,13,11,13,18,18]
  level: 6
  weapon: メイス
  shield: 戦士の円盾
  armor: 司祭の鎧
  spell: 大回復
  ring: なし
持たざるもの:
  ability: [10,10,10,10,10,10]
  level: 1
  weapon: なし
  shield: なし
  armor: なし
  spell: なし
  ring: なし
EOD

JOBS.keys.each do |job|
  JOBS[job]["job"] = job
end
