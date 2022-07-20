# medium

require 'pry'

    # 2
   # / \
  # 1   3

# Input: [2,1,3]
# Output: true

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
  end
end

root = TreeNode.new(2)
root.left = TreeNode.new(1)
root.right = TreeNode.new(3)

def is_valid_bst(root)
  valid?(root, nil, nil)
end

def valid?(root, max, min)
  return true unless root

  # 1. define base cases
  # 2. define recursive calls

  return false if min && min >= root.val
  return false if max && max <= root.val

  valid?(root.left, root.val, min) && valid?(root.right, max, root.val)
end

puts is_valid_bst(root)
