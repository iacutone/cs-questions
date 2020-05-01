# easy

require 'pry'

# Input: [1,2,2,3]
# Output: true

# a = [1,2,2,3]
# a = [1,3,2]
# a = [6,5,4,4]
a = [5,3,2,4,1]
# a = [1,1,0]

def is_monotonic(a)
  return true if a.size == 2

  incr = true
  decr = true
  a.each_with_index do |int, i|
    incr = false if a[i + 1] && int > a[i + 1]
    decr = false if a[i + 1] && int < a[i + 1]
  end

  incr || decr
end

puts is_monotonic(a)
