namespace :backup do
  desc "imagesテーブルをseed_fu形式にバックアップする"
  task :run do
    Image.find_each do |image|
      puts image.source
    end
  end
end
