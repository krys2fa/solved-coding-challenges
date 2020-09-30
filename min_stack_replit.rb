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
    curr_node = get_node(index)
    prev_node = get_node(index-1) unless index == 0
    following_node = get_node(index+1) unless curr_node == @tail

    if index == 0
      @head = following_node
      curr_node.next_node = nil
    elsif curr_node == @tail
      @tail = prev_node
      prev_node.next_node = nil
    else
      prev_node.next_node = following_node
    end

    @length -= 1

    curr_node.value

  end

  def minimum

    return if @head.nil?

    curr_node = @head
    min = curr_node.value

    until curr_node.nil?
      if curr_node.value < min
        min = curr_node.value
      end
      curr_node = curr_node.next_node
    end
    min

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

  def min
    @list.minimum
  end

end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.min
# => 3

stack.pop
stack.push(7)
puts stack.min
# => 3

stack.push(2)
puts stack.min
# => 2

stack.pop
puts stack.min
# => 3
