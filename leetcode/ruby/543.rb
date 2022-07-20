# easy

require 'pry'

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
  end
end

root = TreeNode.new 1
root.left = TreeNode.new 2
root.left.left = TreeNode.new 4
root.left.right = TreeNode.new 5
root.right = TreeNode.new 3

def diameter_of_binary_tree(root)
  return 0 unless root
  return 1 unless root.left || root.right

  @edges = 0
  dfs(root)
  @edges - 1
end

def dfs(node)
  return 0 unless node

  left = dfs(node.left)
  right = dfs(node.right)
  @edges = [left + right + 1, @edges].max
  [left, right].max + 1
end

puts diameter_of_binary_tree(root)
