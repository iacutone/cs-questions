# easy

require 'pry'

# Input: words = ["hello","leetcode"], order = "hlabcdefgijkmnopqrstuvwxyz"
# Output: true
# Explanation: As 'h' comes before 'l' in this language, then the sequence is sorted.

# words = ["hello","leetcode"]
# order = "hlabcdefgijkmnopqrstuvwxyz"
# words = ["word","world","row"]
# order = "worldabcefghijkmnpqstuvxyz"
words = ["apple","app"]
order = "abcdefghijklmnopqrstuvwxyz"
# words = ["fxasxpc","dfbdrifhp","nwzgs","cmwqriv","ebulyfyve","miracx","sxckdwzv","dtijzluhts","wwbmnge","qmjwymmyox"]
# order = "zkgwaverfimqxbnctdplsjyohu"
# words = ["kuvp","q"]
# order = "ngxlkthsjuoqcpavbfdermiywz"

def is_alien_sorted(words, order)
  order_table = {}
  order.each_char.with_index do |char, index|
    order_table[char] = index
  end

  words.each_with_index do |word, word_index|
    word.each_char.with_index do |char, char_index|
      break if word_index == words.size - 1
      if order_table[char] == order_table[words[word_index + 1][char_index]]
        next
      elsif words[word_index + 1][char_index] && order_table[char] < order_table[words[word_index + 1][char_index]]
        break
      elsif word.size > words[word_index + 1].size
        return false
      elsif order_table[char] > order_table[words[word_index + 1][char_index]]
        return false
      end
    end
  end

  true
end

puts is_alien_sorted(words, order)
