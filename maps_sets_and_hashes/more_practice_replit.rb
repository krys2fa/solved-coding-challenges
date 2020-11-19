def find_pairs(array, k)
  pairs = []

  array.each_with_index do |x, index|
    array[(index + 1)..-1].each do |y|
      pairs.push([x, y]) if x + y == k
    end
  end

  pairs
end
