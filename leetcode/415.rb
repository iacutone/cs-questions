# easy

require 'pry'

# num1 = '9'
# num2 = '99'
# num1 = '0'
# num2 = '9'
num1 = '123'
num2 = '456'

def add_strings(num1, num2)
  if num2.size > num1.size
    c = num2
    num2 = num1
    num1 = c
  end

  holder = []

  num1.reverse.each_char.with_index do |char, index|
    holder << (10**index) * (char.to_i + num2.reverse[index].to_i)
  end

  holder.sum.to_s
end

puts add_strings(num1, num2)
