# 题目: 使用者输入 x,y,z，请输出三个数中最大的数

print "请输入一个数字x，然后按 Enter: "
x = gets

print "请输入一个数字y，然后按 Enter: "
y = gets

print "请输入一个数字z，然后按 Enter: "
z = gets

msg = 'x'
t = x.to_f
if t < y.to_f
    msg = 'y'
    t = y.to_f
end
if t < z.to_f
    msg = 'z'
    t = z.to_f
end

puts "最大的数是 #{msg}"
