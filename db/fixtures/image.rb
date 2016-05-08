require "yaml"

Image.delete_all

images = YAML.load (<<IMAGE)
---
- land/018.png
- land/000.png
- land/035.png
- land/039.png
- land/011.png
- land/032.png
- land/036.png
- land/038.png
- land/005.png
- land/037.png
- land/040.png
- land/022.png
- land/020.png
- land/031.png
- land/024.png
- land/002.png
- land/004.png
- land/033.png
- land/033.png
- land/034.png
- land/026.png
- land/014.png
- land/007.png
- land/023.png
- land/000.png
- land/026.png
- land/008.png
- land/006.png
IMAGE

images.each_with_index do |source,imageable_id|
  Image.seed do |s|
    s.source = source
    s.imageable_id = imageable_id
    s.imageable_type = "Map"
  end
end

