# easy

require 'pry'

# Input: a = '11', b = '1'
# Output: '100'

# Input: a = '1010', b = '1011'
# Output: '10101'

# @param {String} a
# @param {String} b
# @return {String}

# a = '11'
# b = ' 1'
    # 100

# a = '1010'
# b = '1011'
    # 10101

# a = '0'
# b = '0'
     # 0

a = '1'
b = '111'
  # 1000

def add_binary(a, b)
  total = []
  carry = 0

  if b.size > a.size
    c = b
    b = a
    a = c
  end

  a.reverse.each_char.with_index do |a, a_idx|
    sum = a.to_i + b.reverse[a_idx].to_i

    if sum + carry == 3
      total << 1
      carry = 1
    elsif sum + carry == 2
      total << 0
      carry = 1
    elsif sum + carry == 1
      total << 1
      carry = 0
    else
      total << 0
    end
  end

  total << 1 unless carry.zero?

  total.reverse.join(',').gsub(',', '')
end

puts add_binary(a, b)
