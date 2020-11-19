def appears_most_times(array)
  total_count = Hash.new(0)

  array.each do |element|
    total_count[element] += 1
  end

  total_count.max_by { |k, v| v }&.first
end
