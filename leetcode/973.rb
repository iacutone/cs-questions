# medium

require 'pry'

# Input: points = [[1,3],[-2,2]], K = 1
# Output: [[-2,2]]
# Explanation:
# The distance between (1, 3) and the origin is sqrt(10).
# The distance between (-2, 2) and the origin is sqrt(8).
# Since sqrt(8) < sqrt(10), (-2, 2) is closer to the origin.
# We only want the closest K = 1 points from the origin, so the answer is just [[-2,2]].

points = [[1,3],[-2,2]]
k = 1

# array solution
def k_closest(points, k)
  distances = []

  points.each do |x,y|
    distances << [x**2 + y**2, [x,y]]
  end
  distances.sort_by!(&:first)
  answer = []
  k.times do |i|
    answer << distances[i][1]
  end

  answer
end

puts k_closest(points, k)
