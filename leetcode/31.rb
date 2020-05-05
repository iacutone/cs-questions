# medium

require 'pry'

nums = [5,4,3,2,1]
nums = [1,2,7,9,6,4,1]
nums = [1,2,3]
nums = [5,1,1]

def next_permutation(nums)
  return if nums.one?
  return swap(nums, 0, 1) if nums.size == 2

  desc = nums.size - 2

  while desc >= 0 && nums[desc] >= nums[desc + 1]
    desc -= 1
  end

  reverse(nums, desc + 1)
  return nums if desc == -1

  next_num = desc + 1
  while next_num < nums.size && nums[next_num] <= nums[desc]
    next_num += 1
  end

  swap(nums, next_num, desc)
  nums
end

private

def swap(nums, index1, index2)
  temp = nums[index1]
  nums[index1] = nums[index2]
  nums[index2] = temp
end

def reverse(nums, beginning)
  ending = nums.size - 1

  while beginning < ending
    swap(nums, beginning, ending)
    beginning += 1
    ending -= 1
  end
end

puts next_permutation(nums)
