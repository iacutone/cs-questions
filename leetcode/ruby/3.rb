# medium

require 'pry'

# Input: "abcabcbb"
# Output: 3
# Explanation: The answer is "abc", with the length of 3.

s = 'abcabcbb'
s = 'bbbbb'
s = 'pwwkew'

def length_of_longest_substring(s)
  hash = {}
  max_length = 0
  start_index = 0

  s.each_char.with_index do |char, i|
    if hash[char]
      max_length = [max_length, i - start_index].max
      start_index = hash[char] + 1
    end

    hash[char] = i
  end

  [max_length, s.size - start_index].max
end

puts length_of_longest_substring(s)
