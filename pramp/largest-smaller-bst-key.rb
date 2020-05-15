require 'pry'

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
  end
end

root = TreeNode.new 20
root.right = TreeNode.new 25
root.left = TreeNode.new 9
root.left.left = TreeNode.new 5
root.left.right = TreeNode.new 12
root.left.right.left = TreeNode.new 11
root.left.right.right = TreeNode.new 14

num = 17

def find_largest_smaller_key(root, num)
  @nums = []
  answer = []
  bfs(root)
  nums = @nums.sort

  nums.sort.each do |n|
    if n < num
      answer << n
    else
      break
    end
  end

  return nums.last if num >= num.last

  answer.last
end

def bfs(root)
  return unless root

  @nums << root.val
  bfs(root.left)
  bfs(root.right)
end

# faster solution
def find_largest_smaller_key(root, num)
  current = nil

  while root
    if root.val < num
      current = root.val
      root = root.right
    else
      root = root.left
    end
  end

  current
end

puts find_largest_smaller_key(root, num)
