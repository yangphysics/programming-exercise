# 题目: 输入一个数字 N，输出 N * N 乘法表

print "请输入数字 N，然后按 Enter: "
n = gets.to_i

arr = (1..n)
arr.each do |x|
    arr.each do |y|
        puts "#{x} x #{y} = #{x*y}"
        #printf "%2d x %2d = %d\n", x, y, x*y
    end
end
# while ( ... )
#   while ( ...)
#
#   end
# end

