require "rmagick"

Dir.glob("/vagrant/mtg_card_image_mob/*.png").each_with_index do |image_path,i|
  original = Magick::Image.read(image_path).first
  image = original.crop(21,43,223,163)

  new_file_name = sprintf("/vagrant/kurotama/app/assets/images/mob/%03d.png",i)
  image.write(new_file_name)
end

