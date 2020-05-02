# medium

require 'pry'

# Input: root = [3,1,4,null,2], k = 1
#    3
#   / \
#  1   4
#   \
#    2
# Output: 1

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
  end
end

root = TreeNode.new(3)
root.left = TreeNode.new(1)
root.left.right = TreeNode.new(2)
root.right = TreeNode.new(4)
k = 1

# root = TreeNode.new(5)
# root.left = TreeNode.new(3)
# root.left.left = TreeNode.new(2)
# root.left.left.left = TreeNode.new(1)
# root.right = TreeNode.new(4)
# root.right.right = TreeNode.new(6)
# k = 3

# root = TreeNode.new(1)
# k = 1

# root = TreeNode.new(1)
# root.right = TreeNode.new(2)
# k = 1

root = TreeNode.new(1)
root.right = TreeNode.new(2)
k = 2

def kth_smallest(root, k)
  return root.val unless root.left || root.right
  value = inorder(root, [], k)
  value[k - 1]
end

def inorder(root, values, k)
  return unless root
  inorder(root.left, values, k)
  values << root.val
  return values if values.size == k
  inorder(root.right, values, k)
  values
end

# def kth_smallest(root, k)
#   @array = []
#   inorder(root)
#   @array[k - 1]
# end

# def inorder(root)
#   return unless root
#   puts root.inspect
#   inorder(root.left)
#   @array << root.val
#   inorder(root.right)
# end

puts kth_smallest(root, k)
