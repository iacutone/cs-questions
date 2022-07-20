# easy

require 'pry'

# Input:
# [4,3,2,7,8,2,3,1]

# Output:
# [5,6]

# nums = [4,3,2,7,8,2,3,1]
nums = [1,1]

def find_disappeared_numbers(nums)
  hash = {}

  nums.each do |num|
    hash[num] ||= true
  end

  missing = []
  nums.size.times do |i|
    missing << i + 1 unless hash[i + 1]
  end

  missing
end

puts find_disappeared_numbers(nums)
