def partition(array)
  pivot = array.shift
  left = []
  right = []
  array.each do |elem|
    if elem <= pivot
      left.push(elem)
    else
      right.push(elem)
    end
  end
  left.push(pivot) + right
end

p partition([4, 5, 3, 9, 1])
# => [3, 1, 4, 5, 9]

# Model Solution

def partition(array)
  # write your code here
  pivot = array.first
  smaller = []
  greater = []

  array[1..-1].each do |number|
    if number > pivot
      greater << number
    else
      smaller << number
    end
  end

  smaller + [pivot] + greater
end
