# 给定一阵列内含数字，请输出 0~9 中不见的数字

def find_missing(arr)
  i = 0
  arr = arr.sort().uniq()
  j = 0
  arr1 = []
  while i<10
    if i != arr[j]
      arr1 << i
    else
      j += 1
    end
    i += 1
  end
  arr1
end

answer = find_missing( [2,2,1,5,8,4] )

puts answer.to_s # 应该是 [0,3,6,7,9]
