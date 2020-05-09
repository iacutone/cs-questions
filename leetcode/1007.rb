# medium

require 'pry'

# Input: A = [2,1,2,4,2,2], B = [5,2,6,2,3,2]
# Output: 2
# Explanation:
# The first figure represents the dominoes as given by A and B: before we do any rotations.
# If we rotate the second and fourth dominoes, we can make every value in the top row equal to 2, as indicated by the second figure.

a = [2,1,2,4,2,2]
b = [5,2,6,2,3,2]

def min_domino_rotations(a, b)
  top_a = switch_counter(a, b, a[0])
  bottom_a = switch_counter(b, a, a[0])
  top_b = switch_counter(a, b, b[0])
  bottom_b = switch_counter(b, a, b[0])

  min = [top_a, bottom_a, top_b, bottom_b].compact.min
  return -1 unless min
  min
end

def switch_counter(top, bottom, value)
  counter = 0
  top.size.times do |i|
    if top[i] != value
      if bottom[i] == value
        counter += 1
      else
        return
      end
    end
  end

  counter
end

puts min_domino_rotations(a, b)
