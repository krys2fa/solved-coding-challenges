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
    current = @head
    while count != index
      current = current.next_node
      count += 1
    end
    current.value
  end

  def add_at(index, number)
    return if index < 0 || index > @length
    return add(number) if @head.nil?

    new_node = Node.new(number)

    if index == 0
      curr = get_node(0)
      new_node.next_node = curr
      @head = new_node
    else
      curr = get_node(index)
      prev = get_node(index-1)
      prev.next_node = new_node
      new_node.next_node = curr
    end
    @length += 1
  end

  def remove(index)
    return if index < 0 || index > @length
    curr = get_node(index)
    prev = get_node(index-1)
    following = get_node(index+1)

    @tail = prev if @tail == curr
    @head = following if index == 0
    prev.next_node = following unless curr == @tail
    @length -= 1
  end

  private
    def get_node(index)
      return if index < 0 || index >= @length
      count = 0
      current = @head
      while count != index
        current = current.next_node
        count += 1
      end
      current
    end

end


list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

puts list.get(2)
# => 11

puts list.get(3)
# => 5
