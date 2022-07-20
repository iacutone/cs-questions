# medium

require 'pry'

# Input:nums = [1,1,1], k = 2
# Output: 2

# nums = [1,1,1]
# k = 2

# nums = [1,2,3]
# k = 3

# nums = [100,1,2,3,4]
# k = 6

nums = [0,0,0,0,0,0,0,0,0,0]
k = 0

def subarray_sum(nums, k)
  count = 0
  sum = 0
  hash = {0 => 1}

  nums.each do |num|
    sum += num
    if hash.has_key?(sum - k)
      count += hash[sum - k]
    end

    if hash[sum]
      hash[sum] = hash[sum] + 1
    else
      hash[sum] = 1
    end
  end

  count
end

puts subarray_sum(nums, k)
