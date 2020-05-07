# medium

require 'pry'

# Input: [1,2,3,null,5,null,4]
# Output: [1, 3, 4]
# Explanation:

#    1            <---
#  /   \
# 2     3         <---
#  \     \
#   5     4       <---

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
  end
end

# tree = TreeNode.new(1)
# tree.left = TreeNode.new(2)
# tree.left.right = TreeNode.new(5)
# tree.right = TreeNode.new(3)
# tree.right.right = TreeNode.new(4)

tree = TreeNode.new(1)
tree.left = TreeNode.new(2)

# top to bottom is indicator of bfs
def right_side_view(tree)
  return [] unless tree

  @queue = []
  @max_depth = 0
  dfs(tree, 0)
  @queue
end

def dfs(tree, level)
  return if tree.nil?

  if level >= @max_depth
    @queue << tree.val
    @max_depth += 1
  end

  level += 1
  dfs(tree.right, level)
  dfs(tree.left, level)
end

puts right_side_view(tree)
