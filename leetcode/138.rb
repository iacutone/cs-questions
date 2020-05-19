# medium

require 'pry'

class Node
  attr_accessor :val, :next, :random

  def initialize(val)
    @val = val
  end
end

head = Node.new 7
head.next = Node.new 13
head.next.next = Node.new 11
head.next.next.next = Node.new 10
head.next.next.next.next = Node.new 1

def copyRandomList(head)
  return unless head

  @hash = {}
  copy(head)
  @hash[head]
end

def copy(node)
  return unless node
  return @hash[node] if @hash[node]

  node_copy = Node.new(node.val)
  @hash[node] = node_copy

  node_copy.next = copy(node.next)
  # node_copy.random = copy(node.random)
  # node_copy
end

puts copyRandomList(head)
