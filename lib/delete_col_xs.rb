require "pathname"

Pathname("/vagrant/kurotama/app/views").find do |file|
  next unless file.file?
  lines = file.readlines
  next unless lines[0] =~ /^\.col\-xs\-4/
  puts file
end
