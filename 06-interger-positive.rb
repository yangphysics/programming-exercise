# 题目: 输入一个数字 x，请判断是否正数、零或负数，以及是不是偶数


print "请输入一个整数，然后按 Enter: "
x = gets.to_i

if x>0 
    pm = "正数"
elsif x<0 
    pm = "负数"
else
    pm = "零"
end

eo = x%2==0? "偶数" : "奇数"

puts "这个数是#{pm}"
puts "这个数是#{eo}"
