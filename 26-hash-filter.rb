# 给定一个数组包含 Hash，请过滤和排序

arr = [
  { "name" => "Peter", "age" => 30 },
  { "name" => "John", "age" => 15 },
  { "name" => "David", "age" => 45 },
  { "name" => "Steven", "age" => 22 },
  { "name" => "Vincent", "age" => 6 },
]

arr1 = []
arr.each do |x|
    if x["age"]>=18
        arr1 << x
    end
end

i = 0
while i<arr1.length() do
    j = i+1
    while j<arr1.length() do
        puts "  #{i}  #{j}  "
        if arr1[i]["age"]>arr1[j]["age"]
            puts arr1
            puts " swap "
            arr1[i],arr1[j] = arr1[j],arr1[i]
            puts arr1
        end
        j += 1
    end
    i += 1
end

puts "所有成年人，并由小到大: #{arr1}"

# 答案应该是
#[
#  { "name" => "Steven", "age" => 22 },
#  { "name" => "Peter", "age" => 30 },
#  { "name" => "David", "age" => 45 }
#]
