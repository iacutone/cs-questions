# easy

require 'pry'

# Given nums = [2, 7, 11, 15], target = 9,

# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].

# nums = [2, 7, 11, 15]
# target = 9

# nums = [3,2,4]
# target = 6

# nums = [3,2,3]
# target = 6

nums = [0,4,3,0]
target = 0

def two_sum(nums, target)
  return [] unless nums

  hash = {}
  nums.each_with_index do |num, index|
    difference = target - nums[index]
    if hash.has_key? difference
      return [hash[difference], index]
    end

    hash[num] = index
  end
end


puts two_sum(nums, target)
