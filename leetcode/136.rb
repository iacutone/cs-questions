# easy

require 'pry'

nums = [4,1,2,1,2]

def single_number(nums)
  hash = {}

  nums.each_with_index do |num, i|
    if hash.key?(num)
      hash.delete(num)
    else
      hash[num] = i
    end
  end

  hash.keys.first
end

puts single_number(nums)
