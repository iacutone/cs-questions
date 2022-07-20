# medium

require 'pry'

# Given linked list: 1->2->3->4->5, and n = 2.

# After removing the second node from the end, the linked list becomes 1->2->3->5.

class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
  end
end

head = ListNode.new(1)
head.next = ListNode.new(2)
head.next.next = ListNode.new(3)
head.next.next.next = ListNode.new(4)
head.next.next.next.next = ListNode.new(5)
n = 2

def remove_nth_from_end(head, n)
  return unless head.next

  dummy_head = ListNode.new(0)
  dummy_head.next = head
  slow_pointer = dummy_head
  fast_pointer = dummy_head

  (n + 1).times do
    fast_pointer = fast_pointer.next
  end

  while fast_pointer != nil
    slow_pointer = slow_pointer.next
    fast_pointer = fast_pointer.next
  end

  slow_pointer.next = slow_pointer.next.next

  dummy_head.next
end

puts remove_nth_from_end(head, n)
