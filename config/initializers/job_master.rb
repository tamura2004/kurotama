require "yaml"

JobMaster = YAML.load (<<JOBS)
---
- 戦士:
    ability: [13,13,11,3,3,9]
    level: 4
    weapon: ロングソード
    shield: ヒーターシールド
    armor: ハードレザー
- 騎士:
    ability: [11,6,14,3,5,13]
    level: 4
    weapon: ブロードソード
    shield: カイトシールド
    armor: 騎士の鎧
- 放浪者:
    ability: [5,14,10,11,8,7]
    level: 7
    weapon: シミター
    shield: レザーシールド
    armor: 放浪のコート
- 盗人:
    ability: [9,15,9,6,11,3]
    level: 5
    weapon: 盗賊の短刀
    shield: ターゲットシールド
    armor: 黒革の鎧
- 山賊:
    ability: [18,7,5,8,10,5]
    level: 5
    weapon: バトルアクス
    shield: 蜘蛛の盾
    armor: 山賊の鎧
- 狩人:
    ability: [5,14,11,9,9,7]
    level: 7
    weapon: ショートボウ
    shield: ラージレザーシールド
    armor: レザーアーマー
- 魔術師:
    ability: [7,4,8,15,8,11]
    level: 5
    weapon: 魔術師の杖
    shield: スモールレザーシールド
    armor: 魔術師のコート
- 呪術師:
    ability: [12,9,10,10,8,5]
    level: 6
    weapon: 呪術の火
    shield: 壊れかけの木盾
    armor: ぼろ布のローブ
- 聖職者:
    ability: [12,3,11,3,14,11]
    level: 6
    weapon: 荒布のタリスマン
    shield: 双鳥の木盾
    armor: 聖職の上衣
- 持たざるもの:
    ability: [9,9,10,10,10,1]
    level: 1
    weapon:
    shield:
    armor:
JOBS