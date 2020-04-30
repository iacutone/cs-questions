require 'pry'

# inputList = ["a", "b", "c", "d", "a", "e", "f", "g", "h", "i", "j", "e"]
inputList = ["z", "z", "c", "b", "z", "c", "h", "f", "i", "h", "i"]

def lengthEachScene(inputList)
  repeating_letter = []
  char_list = []

  inputList.each_with_index do |char, i|
    if repeating_letter.include? char
      repeating_letter << char
      char_list << repeating_letter.size
      repeating_letter = []
    else
      repeating_letter << char
    end
  end

  char_list
end

puts lengthEachScene(inputList)
# 5, 7

# 6, 5
def max_in_list(list, n = 1)
  list.group_by { |v| v }.sort_by do |_, s|
    -s.length
  end.first(n).map(&:first)
end

numbers = [ 1, 1, 1, 1, 2, 2, 2, 3, 3, 4, 4, 4, 5, 5, 6 ]
