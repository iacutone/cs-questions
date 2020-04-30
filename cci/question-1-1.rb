# Is Unique: Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?

require 'pry'

unique_string = 'abcdefg'
non_unique_string = 'this this this'

def remove_space(string)
  string.gsub(" ", "")
end

def is_uniq?(string)
  char_list = []

  string.each_char do |char|
    return false if char_list.include?(char)

    char_list << char
  end

  true
end

puts is_uniq?(unique_string)
puts is_uniq?(non_unique_string)

def is_uniq1?(string)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  string.each_char do |char|
    if alphabet.include?(char)
      alphabet.gsub(char, "")
    else
      return false
    end
  end

  true
end

puts is_uniq1?(unique_string)
puts is_uniq1?(non_unique_string)
