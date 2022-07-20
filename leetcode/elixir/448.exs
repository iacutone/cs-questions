# easy


# Given an array nums of n integers where nums[i] is in the range [1, n], return an array of all the integers in the range [1, n] that do not appear in nums.

 

# Example 1:

# Input: nums = [4,3,2,7,8,2,3,1]
# Output: [5,6]

# Example 2:

# Input: nums = [1,1]
# Output: [2]

 

# Constraints:

#     n == nums.length
#     1 <= n <= 105
#     1 <= nums[i] <= n


defmodule Solution do
  @spec find_disappeared_numbers(nums :: [integer]) :: [integer]
  def find_disappeared_numbers(nums) do

  end
end

nums = [4,3,2,7,8,2,3,1]
IO.inspect(Solution.find_disappeared_numbers(nums))

