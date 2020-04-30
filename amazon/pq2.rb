require 'pry'

num = 5
arr = [2, 3, 4, 5, 6]
# arr = [2, 4, 6, 8, 10]

def generalizedGCD(num, arr)
  result = arr.first

  arr.each do |num|
    result = result.gcd(num)
  end

  result
end

puts generalizedGCD(num, arr)
