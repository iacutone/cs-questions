# medium

require 'pry'

# Input: "babad"
# Output: "bab"
# Note: "aba" is also a valid answer.

s = 'babad'

def longest_palindrome(s)
  return '' if s.nil?
  return s if s.size == 1

  start = 0
  finish = 0

  s.size.times do |i|
    left = is_palindrome?(s, i, i)
    right = is_palindrome?(s, i, i + 1)

    max_length = [left, right].max

    if max_length > finish - start
      start = i - (max_length - 1) / 2
      finish = i + max_length / 2
    end
  end

  s[start..finish]
end

def is_palindrome?(string, left, right)
  while left >= 0 && right < string.length && string[left] == string[right]
    left -= 1
    right += 1
  end

  right - left - 1
end

puts longest_palindrome(s)
