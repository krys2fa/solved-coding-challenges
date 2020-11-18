def bfs(graph)
  discovered = Array.new(graph.keys.length, false)
  queue = []
  path = []
  # Start with the node 0
  queue.push(0)
  # Mark the node 0 discovered
  discovered[0] = true
  until queue.empty?
    current = queue.shift
    # We're processing the current element at this point. So, push the current node to the result path
    path.push(current)
    # Explore the adjacent nodes of the current node
    graph[current].each do |adjacent|
      # If the adjacent node had not been discovered previously, push it to the end of the queue and mark it discoreved
      unless discovered[adjacent]
        queue.push(adjacent)
        discovered[adjacent] = true
      end
    end
  end
  # return the result path
  path
end

p bfs({
  0 => [2],
  1 => [4],
  2 => [5, 0, 3],
  3 => [2],
  4 => [1, 5],
  5 => [4, 2]
})
# => [0, 2, 5, 3, 4, 1]

#  Model Solution
def bfs(graph)
  # write your code here
  queue = [0]
  result = []
  visited = []

  until queue.empty?
    head = queue.shift
    result << head
    visited << head

    not_visited = graph[head].reject { |node| visited.include? node }

    visited += not_visited
    queue += not_visited
  end

  result
end

p bfs({
  0 => [2],
  1 => [4],
  2 => [5, 0, 3],
  3 => [2],
  4 => [1, 5],
  5 => [4, 2]
})
# => [0, 2, 5, 3, 4, 1]
