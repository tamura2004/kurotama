require "yaml"

jobs = <<"EOD"
戦士,4,13,13,11,3,3,9
騎士,4,11,6,14,3,5,13
放浪者,7,5,14,10,11,8,7
盗人,5,9,15,9,6,11,3
山賊,5,18,7,5,8,10,5
狩人,7,5,14,11,9,9,7
魔術師,5,7,4,8,15,8,11
呪術師,6,12,9,10,10,8,5
聖職者,6,12,3,11,3,14,11
持たざるもの,1,9,9,10,10,10,1
EOD

jobs.split(/\n/).each do |line|
  name,level,str,dex,con,int,wis,cha = line.split(/,/)
  puts "- #{name}:"
  printf "    ability: [%d,%d,%d,%d,%d,%d]\n",str,dex,con,int,wis,cha
  printf "    level: %d\n",level
end

