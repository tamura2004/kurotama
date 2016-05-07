require "fileutils"

Dir.glob("/vagrant/kurotama/app/assets/images/land/*.png").each_with_index do |image_path,i|
  new_file_name = sprintf("/vagrant/kurotama/app/assets/images/land/%03d.png",i)

  FileUtils.mv(image_path, new_file_name)
end

