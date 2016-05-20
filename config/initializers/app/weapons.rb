WEAPONS = YAML.load (<<EOD)
---
折れた短剣:
  ダメージ: 40
  重量: 2
  費用: 50
  要求: [2,3,0,0,0,0]
  補正: [2,0,0,0,0,0]
折れた直剣:
  ダメージ: 80
  重量: 2
  費用: 100
  要求: [2,3,0,0,0,0]
  補正: [2,0,0,0,0,0]
打刀:
  ダメージ: 90
  重量: 5
  費用: 200
  要求: [14,14,0,0,0,0]
  補正: [0,8,0,0,0,0]
グレートソード:
  ダメージ: 200
  重量: 22
  費用: 800
  要求: [28,10,0,0,0,0]
  補正: [4,2,0,0,0,0]
シミター:
  ダメージ: 110
  重量: 2
  費用: 200
  要求: [7,16,0,0,0,0]
  補正: [0,6,0,0,0,0]
盗賊の短刀:
  ダメージ: 65
  重量: 1
  費用: 100
  要求: [3,11,0,0,0,0]
  補正: [2,0,0,0,0,0]
ラージクラブ:
  ダメージ: 120
  重量: 11
  費用: 800
  要求: [26,0,0,0,0,0]
  補正: [8,0,0,0,0,0]
バトルアクス:
  ダメージ: 140
  重量: 4
  費用: 200
  要求: [15,5,0,0,0,0]
  補正: [4,2,0,0,0,0]
ショートボウ:
  ダメージ: 65
  重量: 1
  費用: 200
  要求: [7,12,0,0,0,0]
  補正: [2,8,0,0,0,0]
魔術師の杖:
  ダメージ: 0
  重量: 2
  費用: 1000
  要求: [0,0,0,10,0,0]
  補正: [0,0,0,2,0,2]
呪術の火:
  ダメージ: 0
  重量: 0
  費用: 1000
  要求: [0,0,0,0,0,0]
  補正: [0,0,0,8,0,8]
メイス:
  ダメージ: 120
  重量: 4
  費用: 200
  要求: [12,5,0,0,0,0]
  補正: [6,0,0,0,0,0]
なし:
  ダメージ: 0
  重量: 0
  費用: 0
  要求: [0,0,0,0,0,0]
  補正: [1,1,0,0,0,0]
EOD

# WEAPONS.keys.each do |weapon|
#   WEAPONS[weapon]["name"] = weapon
# end
