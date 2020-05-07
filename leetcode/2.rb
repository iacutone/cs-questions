# medium

require 'pry'

# Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 0 -> 8
# Explanation: 342 + 465 = 807.

class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
  end
end

l1 = ListNode.new(2)
l1.next = ListNode.new(4)
l1.next.next = ListNode.new(3)

l2 = ListNode.new(5)
l2.next = ListNode.new(6)
l2.next.next = ListNode.new(4)

# array solution
def add_two_numbers(l1, l2)
  l1_arr = []
  l2_arr = []

  until l1.nil?
    l1_arr << l1.val
    l1 = l1.next
  end

  until l2.nil?
    l2_arr << l2.val
    l2 = l2.next
  end

  output = l1_arr.reverse.join.to_i + l2_arr.reverse.join.to_i
  out_array = []
  output.to_s.reverse.to_s.each_char do |char|
    out_array << char.to_i
  end

  out_array
end

# linked list solution
def add_two_numbers(l1, l2)
  dummy_head = ListNode.new(0)
  pointer = dummy_head
  carry = 0

  until l1.nil? || l2.nil?
    num_1 = l1.nil? ? 0 : l1.val
    num_2 = l2.nil? ? 0 : l2.val
    sum = num_1 + num_2 + carry
    carry = sum / 10

    pointer.next = ListNode.new(sum % 10)
    pointer = pointer.next

    l1 = l1.next
    l2 = l2.next
  end

  dummy_head.next
end

puts add_two_numbers(l1, l2)
