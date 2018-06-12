# 请打开 wordcount.txt，计算每个单字出现的次数

doc = File.read("wordcount.txt")

stat = {}
doc.split().each do |word|
    word = word.gsub(/[,.]/, "")
    if stat.include?(word)
        stat[word] += 1
    else
        stat[word] = 1
    end
end
puts stat
