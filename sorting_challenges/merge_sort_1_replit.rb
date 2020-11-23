def merge_sort(array1, array2)
  # third array to store the merged elements
  result = []
  # index for the first array
  i = 0
  # index for the second array
  j = 0
  # iterate until one of them is completely traversed
  while i < array1.length && j < array2.length
    # if the first array holds the smaller element in its current index,
    # store it in the result array then increment the index of the first array
    if array1[i] <= array2[j]
      result << array1[i]
      i += 1
    # otherwise, store the element from the second array in the result array,
    # then increment the index of the second array
    else
      result << array2[j]
      j += 1
    end
  end
  # after the loop above, one of the arrays is completely traversed but the other is not
  # this means that elements remain

  # append all remaining elements from the first array to the result array, if they exist
  while i < array1.length
    result << array1[i]
    i += 1
  end

  # append all remaining elements from the second array to the result array, if they exist
  while j < array2.length
    result << array2[j]
    j += 1
  end
  result
end


# Model Solution
def merge_sort(array1, array2)
  # write your code here
  sorted_array = []
  i = 0
  j = 0

  while i < array1.size && j < array2.size
    if array1[i] < array2[j]
      sorted_array << array1[i]
      i += 1
    else
      sorted_array << array2[j]
      j += 1
    end
  end

  if i < array1.size
    sorted_array.concat(array1[i..-1])
  end

  if j < array2.size
    sorted_array.concat(array2[j..-1])
  end

  sorted_array
end

p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
# => [1, 2, 3, 4, 6, 8, 9, 11]
