maps = YAML.load (<<MAP)
---
-
  - 火防女アナスタシア
  - 鍛冶師アンドレイ
  - 鍛冶師レニガッツ
  - 篝火
  - 北の不死院
  - 不死院の広間
  - 不死院の階段
  - 不死院の門
-
  - 火継ぎの祭祀場
  - 城下不死街
  - 城下不死教区
  - 黒い森の庭
  - 狭間の森
  - 飛竜の谷
  - 病み村
  - 最下層
  - 不死街下層
-
  - クラーグの住処
  - デーモン遺跡
  - 混沌の廃墟イザリス
-
  - センの古城
  - アノールロンド
  - 公爵の書庫
  - 結晶洞窟
-
  - 巨人墓場
  - 地下墓地
  - 小ロンド遺跡
  - 深淵
-
  - エレーミアス絵画世界
-
  - ウーラシールの霊廟
  - 王家の裏庭
  - ウーラシール市街
  - 深淵の穴
-
  - 大樹のうつろ
  - 灰の湖
MAP

MAPS = Hash.new{|h,k|h[k]={}}

# MAPS["北の不死院"] = Map.new(name:"北の不死院", image: "land/北の不死院.png")

@id = -1
def id
  @id += 1
end

maps.each do |area|
  area.each do |name|
    Map.seed do |s|
      s.id = id
      s.name = name
      s.image = "land/#{name}.png"
    end
  end
end

maps.each do |area|
  area.each_cons(2) do |left_name, right_name|
    left = Map.find_by(name: left_name)
    right = Map.find_by(name: right_name)
    left.right = right
    right.left = left
    left.save
    right.save
  end
end



