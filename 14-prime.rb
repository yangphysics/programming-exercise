# 输入一个数字 N，请检查是不是质数

def is_prime(n)
    is_prime = true
    (2..(n/2)).each do |x|
        if n%x==0
            puts "  #{n} = #{x} x #{n/x}"
            is_prime = false
            break
        end
    end
    return is_prime
end

print "请输入数字 N，然后按 Enter: "
n = gets

if is_prime(n.to_i)
  puts "这是质数"
else
  puts "这不是质数"
end
