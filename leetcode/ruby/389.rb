# easy

require 'pry'

# Input:
# s = "abcd"
# t = "abcde"

# Output:
# e

# Explanation:
# 'e' is the letter that was added.

s = 'abc'
t = 'abcd'

def find_the_difference(s, t)
  return unless s && t

  t_sum = 0
  t.each_char do |char|
    t_sum += char.ord
  end

  s_sum = 0
  s.each_char do |char|
    s_sum += char.ord
  end

  (t_sum - s_sum).chr
end

puts find_the_difference(s, t)
