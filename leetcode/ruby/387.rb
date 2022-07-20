# easy

require 'pry'

s = "cc"

def first_uniq_char(s)
  return -1 if s.nil? || s.empty?

  hash = {}

  s.each_char do |char|
    if hash.has_key?(char)
      hash[char] = -1
    else
      hash[char] = s.index(char)
    end
  end

  hash.each do |key, value|
    if value != -1
      return value
    end
  end

  -1
end

puts first_uniq_char(s)
