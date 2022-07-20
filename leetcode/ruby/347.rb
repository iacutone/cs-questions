# medium

require 'pry'

# nums = [1,1,1,2,2,3]
# k = 2

# nums = [1]
# k = 1

nums = [4,1,-1,2,-1,2,3]
k = 2

def top_k_frequent(nums, k)
  hash = {}
  nums.each do |num|
    if hash.key? num
      hash[num] += 1
    else
      hash[num] = 1
    end
  end

  frequent_nums = []

  sorted_hash = hash.sort_by { |num, freq| freq }.reverse
  k.times do |i|
    frequent_nums << sorted_hash[i][0]
  end

  frequent_nums.reverse
end

puts top_k_frequent(nums, k)

# [1,2]

# [1]

# [-1,2]

