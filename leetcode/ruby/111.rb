# easy

require 'pry'

# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
  end
end

# [3,9,20,null,null,15,7]

root = TreeNode.new(3)
root.left = TreeNode.new(9)
root.right = TreeNode.new(20)
root.left.left = TreeNode.new(nil)
root.left.right = TreeNode.new(nil)
root.right.left = TreeNode.new(15)
root.right.right = TreeNode.new(7)

def min_depth(root)
  return 0 unless root

  dfs(root, 0)
end

def dfs(root, depth)
  left = dfs(root.left, depth += 1) if root.left
  right = dfs(root.right, depth += 1) if root.right

  if left.nil? || right.nil?
    (left || 0) + (right || 0) + 1
  else
    [left, right].min + 1
  end
end

puts min_depth(root)
