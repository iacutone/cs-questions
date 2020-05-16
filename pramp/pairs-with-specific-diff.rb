require 'pry'

# input:  arr = [0, -1, -2, 2, 1], k = 1
# output: [[1, 0], [0, -1], [-1, -2], [2, 1]]

# input:  arr = [1, 7, 5, 3, 32, 17, 12], k = 17
# output: []

arr = [0, -1, -2, 2, 1]
#     -1  -2  -3  1  0
k = 1

# fast
def find_pairs_with_given_difference(arr, k)
  return if k == 0

  hash = {}
  answer = []

  arr.each do |x|
    hash[x - k] = x
  end

  arr.each do |y|
    if hash.has_key? y
      answer << [hash[y], y]
    end
  end

  answer
end

puts find_pairs_with_given_difference(arr, k)
