require "yaml"

JOBS = YAML.load (<<EOD)
---
騎士:
  ability: [30,3,18,3,3,3]
  level: 1
  weapon: 折れた直剣
  shield: タワーシールド
  armor: 騎士の鎧
  spell: なし
  ring: 赤目の指輪
戦士:
  ability: [20,20,10,3,3,4]
  level: 1
  weapon: グレートソード
  shield: なし
  armor: なし
  spell: なし
  ring: フリンの指輪
放浪者:
  ability: [5,14,10,11,8,7]
  level: 7
  weapon: シミター
  shield: レザーシールド
  armor: 放浪のコート
  spell: なし
  ring: なし
盗人:
  ability: [9,15,9,6,11,3]
  level: 5
  weapon: 盗賊の短刀
  shield: ターゲットシールド
  armor: 黒革の鎧
  spell: なし
  ring: なし
山賊:
  ability: [18,7,5,8,10,5]
  level: 5
  weapon: バトルアクス
  shield: 蜘蛛の盾
  armor: 山賊の鎧
  spell: なし
  ring: なし
狩人:
  ability: [5,14,11,9,9,7]
  level: 7
  weapon: ショートボウ
  shield: ラージレザーシールド
  armor: レザーアーマー
  spell: なし
  ring: なし
魔術師:
  ability: [1,1,6,50,1,1]
  level: 5
  weapon: 魔術師の杖
  shield: 素手
  armor: 魔術師のコート
  spell: ソウルの槍
  ring: 命の加護の指輪
呪術師:
  ability: [14,20,1,1,1,23]
  level: 6
  weapon: 呪術の火
  shield: 眠り竜の盾
  armor: ぼろ布のローブ
  spell: 大火球
  ring: 緑花の指輪
聖職者:
  ability: [12,3,11,3,14,11]
  level: 6
  weapon: メイス
  shield: 双鳥の大盾
  armor: 司祭の鎧
  spell: 大回復
  ring: 命の加護の指輪
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
