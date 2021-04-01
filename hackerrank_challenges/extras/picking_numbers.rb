def pickingNumbers(a)
  sorted = a.sort
  longest_subarray_length = 0

  sorted.each_with_index do |el, index|
    count = 1
    curr_index = index + 1
    while curr_index < sorted.size && (sorted[curr_index] - el) <= 1
      count += 1
      longest_subarray_length = count if count > longest_subarray_length
      curr_index += 1
    end
  end
  longest_subarray_length
end
