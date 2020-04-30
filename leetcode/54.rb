# medium

require 'pry'

matrix = [
  [1,2,3,4],
  [5,6,7,8],
  [9,10,11,12]
]

def spiral_order(matrix)
  return [] if matrix.nil? || matrix.empty?

  output = []

  top = 0
  left = 0
  bottom = matrix.size - 1
  right = matrix.first.size - 1
  dir = [:right, :down, :left, :up].cycle

  while top <= bottom && left <= right do
    case dir.next
    when :right
      left.upto(right) { |i| output << matrix[top][i] }
      top += 1
    when :down
      top.upto(bottom) { |i| output << matrix[i][right] }
      right -= 1
    when :left
      right.downto(left) { |i| output << matrix[bottom][i] }
      bottom -= 1
    when :up
      bottom.downto(top) { |i| output << matrix[i][left] }
      left += 1
    end
  end

  output
end

puts spiral_order(matrix)
