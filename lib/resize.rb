require "rmagick"

Dir.glob("/vagrant/kurotama/app/assets/images/land/*.png").each do |image_path|
  basename = File.basename(image_path)
  original = Magick::Image.read(image_path).first
  image = original.resize_to_fit(180,180)
  image.write(File.join("/vagrant/kurotama/app/assets/images/land/small",basename))
end

