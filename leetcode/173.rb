# medium

require 'pry'

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
  end
end

tree = TreeNode.new 7
tree.left = TreeNode.new 3
tree.right = TreeNode.new 15
tree.right.left = TreeNode.new 9
tree.right.right = TreeNode.new 20

class BSTIterator
  attr_reader :root
  attr_accessor :stack

  def initialize(root)
    @root = root
    @stack = []
    dfs(root)
    @stack.reverse!
  end

  def next
    stack.pop
  end

  def has_next
    !stack.empty?
  end

  private

  def dfs(root)
    return unless root

    dfs(root.left)
    stack << root.val
    dfs(root.right)
  end
end

BSTIterator.new(tree)
