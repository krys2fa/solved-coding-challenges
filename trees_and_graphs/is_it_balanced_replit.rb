class Node
	attr_reader :data
  attr_accessor :left, :right

  def initialize data
    @data = data
  end
end

# helper function
def array_to_tree(array, i = 0)
  pp "Array: #{array}"
	return nil if i >= array.length || array[i] == 0 || array == nil

  node = Node.new(array[i])
  node.left = array_to_tree(array, 2*i+1)
  node.right = array_to_tree(array, 2*i+2)

  node
end

# helper function
def height(node, index=0)
	return 0 if node.nil? || node == 0

  left_child_height = height(node.left, 2*index + 1)
  right_child_height = height(node.right, 2*index + 2)

  height = 1 + [left_child_height, right_child_height].max
end

def balanced_tree?(array)
  pp "BT: #{array}"
  if array.kind_of?(Array)
    root = array_to_tree(array)
  else
    root = array
  end
  # pp root
	return true if root.nil?
  # calculate left subtree's height
  left_height = height(root.left)
  # calculate right subtree's height
  right_height = height(root.right)
  # if the difference between right and left height greater than 1, it's imbalanced
  return false if (left_height - right_height).abs > 1
  # Are the left and right subtree balanced?
  balanced_tree?(root.left) && balanced_tree?(root.right)
end

puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
# => false

puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => true

# balanced_tree?([1, 2, 3, 4, 0, 0, 5, 6, 0, 0, 0, 0, 0, 0, 7])
# => false
