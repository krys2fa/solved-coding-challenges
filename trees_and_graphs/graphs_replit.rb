def graph(hash_graph, arr = [], int = 0)
  return arr if arr[-1] == 4

  arr << hash_graph.keys[int]
  pp arr
  int = hash_graph[int][0]
  pp int
  graph(hash_graph, arr, int)
end

hash = {
  0 => [2],
  1 => [4],
  2 => [5, 0, 3],
  3 => [2],
  4 => [1, 5],
  5 => [4, 2]
}

p graph(hash)
# => [0, 2, 5, 4]

def graph(hash_graph)
  next_node = 0
  result = [0]

  while next_node != 4
    next_node = hash_graph[next_node].first
    result << next_node
  end

  result
end

hash = {
  0 => [2],
  1 => [4],
  2 => [5, 0, 3],
  3 => [2],
  4 => [1, 5],
  5 => [4, 2]
}

p graph(hash)
# => [0, 2, 5, 4]

