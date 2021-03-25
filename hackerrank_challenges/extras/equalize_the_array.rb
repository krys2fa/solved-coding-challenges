def equalizeArray(arr)
  hash = Hash.new(0)
  arr.each { |ele| hash[ele] += 1 }
  arr.size - hash.values.max
end
