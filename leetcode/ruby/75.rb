# medium

require 'pry'

# Input: [2,0,2,1,1,0]
# Output: [0,0,1,1,2,2]

# 1. does it start right?
# 2. does it end right?
# 3. does it increment correctly?
# 4. is the invariant maintained?

nums = [2,0,2,1,1,0]
      # r
      # w
      #           b

def sort_colors(nums)
  red = 0
  white = 0
  blue = nums.size - 1

  while white <= blue
    curr = nums[white]

    if curr == 0
      nums[white] = nums[red]
      nums[red] = 0
      red += 1
      white += 1
    elsif curr == 1
      white += 1
    elsif curr == 2
      nums[white] = nums[blue]
      nums[blue] = 2
      blue -= 1
    end
  end

  nums
end

puts sort_colors(nums)
