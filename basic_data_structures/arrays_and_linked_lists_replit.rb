class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
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
    current_number = Node.new(number)
    if @head.nil?
      @head = @tail = current_number
    else
      @tail.next_node = @tail = current_number
    end
    @length += 1
  end

  def get(index)
    return if index < 0 || index >= @length

    count = 0
    current_number = @head
    while count != index
      current_number = current_number.next_node
      count += 1
    end
    current_number.value
  end
end

list = LinkedList.new


list.add(3)
list.add(5)
puts list.get(1)
# => 5
