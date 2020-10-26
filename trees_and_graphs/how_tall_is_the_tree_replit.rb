def binary_tree_height(array_tree)
 tree_height(array_tree, index=0)
end


def tree_height(array_tree, index)
  return 0 if array_tree[index].nil? || array_tree[index] == 0

  left_child_height = tree_height(array_tree, 2*i + 1)
  right_child_height = tree_height(array_tree, 2*i + 2)

  height = 1 + [left_child_height, right_child_height].max
end

puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3
