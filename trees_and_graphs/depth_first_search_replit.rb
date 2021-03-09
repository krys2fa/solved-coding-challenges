def depth_first_search(graph)
  result = []
  stack = [0]
  visited = []

  while stack.size != 0
    head = stack.pop
    result << head
    visited << head

    not_visited = graph[head].reject { |node| visited.include? node }

    visited += not_visited
    stack += not_visited.reverse

    p "head: #{head}"
    p "visited: #{visited}"
    p "result: #{result}"
    p "not_visited: #{not_visited}"
    p "stack: #{stack}"
    p "============="
  end

  result
end

p depth_first_search({
  0 => [2],
  1 => [4],
  2 => [5, 0, 3],
  3 => [2],
  4 => [1, 5],
  5 => [4, 2]
})
# => [0, 2, 5, 4, 1, 3]
