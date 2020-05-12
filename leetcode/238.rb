# medium

require 'pry'

# Input:  [1,2,3,4]
# Output: [24,12,8,6]

# nums = [1,2,3,4]
# nums = [0,0]
nums = [0,4,0]

def product_except_self(nums)
  result = []
  left = 1
  right = 1

  nums.size.times do |i|
    result[i] = left
    left *= nums[i]
  end

  (nums.size - 1).downto(0) do |i|
    result[i] *= right
    right *= nums[i]
  end

  result
end

puts product_except_self(nums)
