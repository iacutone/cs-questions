require 'pry'

# a = [1,2,3,4,5]
# d = 4

a = [41, 73, 89, 7, 10, 1, 59, 58, 84, 77, 77, 97, 58, 1, 86, 58, 26, 10, 86, 51]
d = 10

def rotLeft(a, d)
  output = []
  d.times do |i|
    output << a.shift
  end

  a << output
  a.flatten
end

puts rotLeft(a, d)

