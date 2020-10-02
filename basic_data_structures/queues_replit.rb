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
    @size = 0
  end

  def add(number)
    new_node = Node.new(number)

    if @head.nil?
      @head = @tail = new_node
    else
      @tail.next_node = new_node
      @tail = new_node
    end

    @size += 1

    new_node.value
  end

  def get(index)
    get_node(index).value
  end

  def add_at(index, number)
    return add(number) if @head.nil?

    new_node = Node.new(number)

    curr_node = get_node(index)
    prev_node = get_node(index-1) unless index == 0
    following_node = get_node(index+1) unless curr_node == @tail

    if index == 0
      @head = new_node
    else
      prev_node.next_node = new_node
    end

    new_node.next_node = curr_node

    @size += 1

    new_node.value

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

    @size -= 1

    curr_node.value
  end

  def size
    @size
  end

  private
  def get_node(index)
    return false if index < 0 || index > @size

    curr_node = @head
    count = 0

    while index != count
      curr_node = curr_node.next_node
      count += 1
    end
    curr_node
  end

end

class Queue
  def initialize
    @list = LinkedList.new
  end

  def add(number)
    @list.add_at(0, number)
    @list.size
  end

  def remove
    @size = @list.size

    if @size.zero?
      return -1
    else
      @list.remove(@size - 1)
    end
  end
end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1
