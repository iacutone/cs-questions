# medium

require 'pry'

# Input: nums = [1,2,3]
# Output:
# [
#   [3],
#   [1],
#   [2],
#   [1,2,3],
#   [1,3],
#   [2,3],
#   [1,2],
#   []
# ]

nums = [1,2,3]

# iterative
def subsets(nums)
  output = [[]]
  nums.each do |num|
    output += output.map do |s|
      s + [num]
    end
  end

  output
end

# recursive -> slower
def subsets(nums)
  subset(nums, 0, [])
end

def subset(nums, start, result)
  results = [result]
  (start...nums.size).each do |index|
    results += subset(nums, index + 1, [nums[index]] + result)
  end

  results
end

puts subsets(nums)
