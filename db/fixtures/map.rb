

require "yaml"

maps = YAML.load (<<MAP)
---
-
  - 北の不死院:
  - 火継ぎの祭祀場:
  - 城下不死街: 不死街下層
  - 城下不死教区: センの古城
  - 狭間の森: ウーラシールの霊廟
  - 飛竜の谷: 病み村
  - 小ロンド遺跡:
  - 深淵:
-
  - 黒い森の庭: 狭間の森
-
  - 不死街下層:
  - 最下層:
  - 病み村: 大樹のうつろ
  - クラーグの住処:
  - デーモン遺跡:
  - 混沌の廃墟イザリス:
-
  - センの古城:
  - アノールロンド: エレーミアス絵画世界
  - 公爵の書庫:
  - 結晶洞窟:
-
  - エレーミアス絵画世界:
-
  - ウーラシールの霊廟:
  - 王家の裏庭:
  - ウーラシール市街:
  - 深淵の穴:
-
  - 地下墓地:
  - 巨人墓場:
-
  - 大樹のうつろ:
  - 灰の湖:
MAP

@id = -1
def id
  @id += 1
end

refs = {}

maps.each_with_index do |map,no|
  map.each do |area|
    area.each do |name,path|
      refs[name] = path if path
      Map.seed do |s|
        s.id = id
        s.no = no
        s.name = name
        s.lock = !!path
      end
    end
  end
end

refs.each do |name,path|
  map = Map.find_by(name: name)
  path = Map.find_by(name: path)
  map.map_id = path.id
  map.save
end




require "pp"

pp maps


