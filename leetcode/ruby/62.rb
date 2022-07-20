# medium

require 'pry'

# Input: m = 3, n = 2
# Output: 3
# Explanation:
# From the top-left corner, there are a total of 3 ways to reach the bottom-right corner:
# 1. Right -> Right -> Down
# 2. Right -> Down -> Right
# 3. Down -> Right -> Right

m = 3
n = 2

def unique_paths(m, n)
  return unless m && n
  return 0 if m.zero? || n.zero?
  return 1 if m == 1 || n == 1

  td_arr = [[1]*m]*n

  (1..n - 1).each do |row|
    (1..m - 1).each do |col|
      td_arr[row][col] = td_arr[row - 1][col] + td_arr[row][col - 1]
    end
  end

  td_arr[n - 1][m - 1]
end

puts unique_paths(m, n)
