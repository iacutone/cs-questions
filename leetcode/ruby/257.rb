# easy

require 'pry'

# Input:

#    1
#  /   \
# 2     3
#  \
#   5

# Output: ["1->2->5", "1->3"]

# Explanation: All root-to-leaf paths are: 1->2->5, 1->3

# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
  end
end

root = TreeNode.new(1)
root.left = TreeNode.new(2)

def binary_tree_paths(root)
  return [] unless root
  return [root.val.to_s] if root.left.nil? && root.right.nil?

  # traverse all nodes
  dfs(root, '', [])
end

def dfs(root, path, paths)
  path += root.val.to_s
  return paths << path unless root.left || root.right
  dfs(root.left, path + '->', paths) if root.left
  dfs(root.right, path + '->', paths) if root.right
  paths
end

puts binary_tree_paths(root)
