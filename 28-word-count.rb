# 请打开 wordcount.txt，计算每个单字出现的次数

doc = File.read("wordcount.txt")

stat = {}
doc.split().each do |x|
    x = x.sub(/[,.]/,'')
    stat[x] = stat.include?(x) ? stat[x]+1 : 1
end

puts stat
#puts stat.sort_by{ |k,v| v }.reverse
