# easy

require 'pry'

# Input:
# ["a","a","b","b","c","c","c"]

# Output:
# Return 6, and the first 6 characters of the input array should be: ["a","2","b","2","c","3"]

# Explanation:
# "aa" is replaced by "a2". "bb" is replaced by "b2". "ccc" is replaced by "c3".

chars = ['a', 'a', 'b', 'b', 'c', 'c', 'c']
# chars = ['a']
# chars = ["a","b","b","b","b","b","b","b","b","b","b","b","b"]

# can't use--no new data types
def compress(chars)
  return 1 if chars.size == 1
  hash = {}

  chars.each do |char|
    if hash[char]
      hash[char] += 1
    else
      hash[char] = 1
    end
  end

  answer = []
  hash.each do |key, value|
    if value == 1
      answer << key
    else
      if value > 9
        answer << key
        value.to_s.each_char do |char|
          answer << char
        end
      else
        answer << key
        answer << value.to_s
      end
    end
  end

  answer.size
end

puts compress(chars)
