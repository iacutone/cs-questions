# easy

require 'pry'

s = 'A man, a plan, a canal: Panama'
s = 'a'

def is_palindrome(s)
  return true if s.empty?
  s = s.gsub(/\W/,'')
  s = s.downcase

  s == s.reverse
end

puts is_palindrome(s)
