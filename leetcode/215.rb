# medium

# Input: [3,2,1,5,6,4] and k = 2
# Output: 5

def find_kth_largest(nums, k)
  nums.sort!
  nums[nums.size - k]
end

puts find_kth_largest(nums, k)
