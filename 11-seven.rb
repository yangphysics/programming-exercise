# 题目: 列出 1 到 100 之间，所有 7 的倍数

arr = []
i = 1
while ( i <= 100 )

  arr << i if i%7==0

  i+=1
end
puts arr.to_s
