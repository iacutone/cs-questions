# medium

require 'pry'

# s = "vvvlo"
# s = "aab"
# s = "aaab"
# s = "bbbbbbb"
s = "bbbbayobq"

def reorganize_string(s)
  hash = {}

  s.each_char do |char|
    if hash.key?(char)
      hash[char] += 1
    else
      hash[char] = 1
    end
  end


  string = ''
  prev_char = nil

  string.length.times do
    most_occurring_char = hash.find {|char, num_occurrences| char != prev_char && !num_occurences.zero?}
    return '' if most_occurring_char[0].nil?

    hash[most_occurring_char[0]] -= 1
    prev_char = most_occurring_char[0]
    string.concat most_occurring_char[0]

    string
  end

  # until string.size == s.size do
  #   first_item = sorted.shift
  #   next_item = sorted.pop

  #   unless string.chars.last == first_item[0]
  #     string.concat first_item[0]
  #   end
  #   sorted << [first_item[0], first_item[1] - 1]

  #   if next_item && next_item[1] > 0
  #     string.concat next_item[0]
  #     sorted << [next_item[0], next_item[1] - 1]
  #   end

  #   if sorted.size == 2
  #     sorted = sorted.sort_by { |char, occurence| occurence }
  #     return '' if sorted.first[1] + 1 < sorted.last[1]
  #   else
  #     sorted = sorted.sort_by { |char, occurence| occurence }.reverse
  #   end

  # end

  # string
end

puts reorganize_string(s)
