# 题目: 输入一个数字 x，请判断是否正数、零或负数，以及是不是偶数


print "请输入一个整数，然后按 Enter: "
x = gets.to_i

if x>0
    pm = '正数'
elsif x<0
    pm = '负数'
else x>0
    pm = '零'
end

if x/2 == 0
    oe = '偶数'
else x>0
    oe = '奇数'
end



puts "这个数是#{pm}"
puts "这个数是#{oe}"
