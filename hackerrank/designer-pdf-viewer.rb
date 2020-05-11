require 'pry'

h = '1 3 1 3 1 4 1 3 2 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5'.split
word = 'abc'

h = '1 3 1 3 1 4 1 3 2 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 7'.split
word = 'zaba'

@letters = "abcdefghijklmnopqrstuvwxyz"

def designerPdfViewer(h, word)
  hash = {}
  h.each_with_index do |height, i|
    letter = @letters[i]
    hash[letter] = height
  end

  nums_to_multiply = []
  word.each_char do |char|
    nums_to_multiply << hash[char].to_i
  end

  sorted_lengths = nums_to_multiply.sort

  sorted_lengths.last * word.size
end

puts designerPdfViewer(h, word)
