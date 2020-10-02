# Start with your code from LinkedList challenge.
class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  def initialize
    @head = nil
    @tail = nil
    @length = 0
  end

  def add(number)
    new_node = Node.new(number)

    if @head.nil?
      @head = @tail = new_node
    else
      @tail.next_node = new_node
      @tail = new_node
    end

    @length += 1

    new_node.value
  end

  def add_at(index, number)
    return add(number) if @head.nil?
    curr_node = get_node(index)
    new_node = Node.new(number)
    new_node.next_node = curr_node

    if index == 0
      @head = new_node
    else
      prev_node = get_node(index-1)
      prev_node.next_node = new_node
    end

    @length += 1

    new_node.value

  end

  def get(index)
    curr_node = get_node(index)
    curr_node.value if curr_node != false
  end

  def remove(index)
    return false if index < 0 || index > @length

    curr_node = get_node(index)
    prev_node = get_node(index-1) unless index == 0
    following_node = get_node(index+1) unless curr_node == @tail

    @tail = prev_node if @tail == curr_node
    @head = following_node if index == 0
    prev_node.next_node = following_node unless curr_node == @tail || index == 0

    @length -= 1

    curr_node.value

  end

  private
  def get_node(index)
    return false if index < 0 || index > @length

    curr_node = @head
    count = 0

    while index != count
      curr_node = curr_node.next_node
      count += 1
    end

    curr_node

  end

end

class Stack
  def initialize
    @list = LinkedList.new
  end

  def push(number)
    @list.add_at(0, number)
  end

  def pop
    @list.remove(0)
  end
end

stack = Stack.new
puts stack.push(3)
puts stack.push(5)
puts stack.pop
# => 5

# stack.push(2)
# stack.push(7)
# puts stack.pop
# => 7

# puts stack.pop
# => 2

# puts stack.pop
# => 3
