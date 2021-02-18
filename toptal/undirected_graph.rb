def undirected_graph(n, a, b)
  arr = []
  a.each_with_index do |el, index|
		arr << [el, b[index]]
	end
	clean_arr = arr.flatten.sort.uniq

	p clean_arr
	last_num = clean_arr[0]
	clean_arr[1, clean_arr.length].each do |el|
	  p el
	  p false if last_num + 1 != el
		last_num = el
	end

	if clean_arr[0] != 1 || clean_arr[clean_arr.length - 1] != n
	  p false
	else
		p true
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
