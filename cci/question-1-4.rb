require 'pry'

s = 'Tact Coa'

def palindrome_permutation?(s)
  hash = {}

  s.downcase!
  s.gsub!(' ', '')
  s.each_char do |char|
    if hash[char]
      hash[char] += 1
    else
      hash[char] = 1
    end
  end

  count = 0
  hash.each do |key, value|
    count += 1 if value % 2 != 0
  end

  count <= 1
end

puts palindrome_permutation?(s)
