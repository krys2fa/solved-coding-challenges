def undirected_graph(n, a, b)
  edge_list = []
  a.each_with_index do |el, index|
		edge_list << [el, b[index]]
	end
	p edge_list

	num = edge_list.flatten.uniq.count
	arr = [0, 0, 0, 0]
	adjacency_matrix = Array.new(num) { Array.new(num, arr) }

	edge_list.each_with_index do |edge, index|

		# p edge
		# p index
		# p adjacency_matrix
		# p adjacency_matrix[index]
		# p adjacency_matrix[index][edge[0]-1]
		adjacency_matrix[index][edge[0]-1] = 1
		# p adjacency_matrix[index][edge[0]-1]
		# # p adjacency_matrix[index]
		# p adjacency_matrix
	end

	p adjacency_matrix
	# clean_arr = arr.flatten.sort.uniq

	# p clean_arr
	# last_num = clean_arr[0]
	# clean_arr[1, clean_arr.length].each do |el|
	#   p el
	#   p false if last_num + 1 != el
	# 	last_num = el
	# end

	# if clean_arr[0] != 1 || clean_arr[clean_arr.length - 1] != n
	#   p false
	# else
	# 	p true
	# end

  # puts dfs(adj_matrix, source, terminal)
end

def dfs(adj_matrix, source, terminal)
  node_stack = [source]

  loop do
    current_node = node_stack.pop
    return false if current_node == nil
    return true if current_node == terminal

    children = (0..adj_matrix.length-1).to_a.select do |i|
      adj_matrix[current_node][i] == 1
    end

    node_stack += children
  end
end

# # true
# n = 4
# a = [1, 2, 4, 4, 3]
# b = [2, 3, 1, 3, 1]


# # false
n = 4
a = [1, 2, 1, 3]
b = [2, 4, 3, 4]

# false
# n = 6
# a = [2, 4, 5, 3]
# b = [3, 5, 6, 4]

# # true
# n = 3
# a = [1, 3]
# b = [2, 2]


undirected_graph(n, a, b)
