# easy

require 'pry'

# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
  end
end

s = [3,4,5,1,2,nil,nil,0]
t = [4,1,2]

s = s.reverse
tree_s = TreeNode.new(s.pop)
tree_s.left = TreeNode.new(s.pop)
tree_s.right = TreeNode.new(s.pop)
tree_s.left.left = TreeNode.new(s.pop)
tree_s.left.right = TreeNode.new(s.pop)
tree_s.right.left = TreeNode.new(s.pop)
tree_s.right.right = TreeNode.new(s.pop)
tree_s.left.left.left = TreeNode.new(s.pop)
tree_s

t = t.reverse
tree_t = TreeNode.new(t.pop)
tree_t.left = TreeNode.new(t.pop)
tree_t.right = TreeNode.new(t.pop)
tree_t

def is_subtree(tree_s, tree_t)
  return false unless tree_s && tree_t
  return true if match?(tree_s, tree_t)
  is_subtree(tree_s.left, tree_t) || is_subtree(tree_s.right, tree_t)
end

def match?(tree_s, tree_t)
  return true if tree_s.nil? && tree_t.nil?
  return false if tree_s.nil? || tree_t.nil?
  return false if tree_s.val != tree_t.val

  # traverse the tree
  match?(tree_s.left, tree_t.left) && match?(tree_s.right, tree_t.right)
end

puts is_subtree(tree_s, tree_t)
