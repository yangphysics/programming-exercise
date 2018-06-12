# 给定一 Hash，输出 value 是偶数的 keys

def find_even_keys(hash)

  keys = []
  hash.each do |index, value|
      if value%2 == 0
          keys << index
      end
  end
  keys
end

h = {
  "a" => 71,
  "b" => 38,
  "c" => 21,
  "d" => 80,
  "e" => 10
}

answer = find_even_keys(h)

puts "有偶数 value 的 keys 有 #{answer}" # 应该是数组 [b,d,e]


