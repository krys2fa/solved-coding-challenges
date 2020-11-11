class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end
class Stack
  attr_reader :size
  def initialize(size = 0)
    @size = size
  end
  @head = nil
  @tail = nil
  def push(value)
    if @head.nil?
      @head = Node.new(value)
      @tail = Node.new(value)
      @size += 1
    else
      current_value = @head
      @head = Node.new(value)
      @head.next_node = current_value
      @size += 1
    end
  end
  def pop
    if @head.nil?
      return false
    else
      current_pointer = @head
      @head = @head.next_node
      @size -= 1
    end
    current_pointer.value
  end
end
def tree_height(tree_as_list)
  # your code here
  i = 0
  stack = Stack.new
  while i < tree_as_list.size
    stack.push(tree_as_list[i])
    i = (2 * i) + 1
  end
  stack.size
end
