def leftmost_nodes_sum(array)
  # your code here
  n = 0
  sum = array[n]
  while ((2*n) + 1) < array.length
    sum += array[((2*n) + 1)]
    n = (2*n) + 1
  end
  puts sum
end

puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
# => 11
