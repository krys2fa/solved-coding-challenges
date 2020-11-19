# insertion sort
def insertion_sort(array)
  for i in 1...(array.length)
    current = array[i]
    j = i - 1
    while j >= 0 && current < array[j]
      array[j + 1] = array[j]
      # increment the counter after the swap
      $insertion_sort_counter += 1
      j -= 1
    end
    array[j + 1] = current
  end
end

# quick sort
def advanced_quicksort(array, begin_index = 0, end_index = array.length - 1)
  if begin_index < end_index
    pivot = partition(array, begin_index, end_index)
    advanced_quicksort(array, begin_index, pivot - 1)
    advanced_quicksort(array, pivot + 1, end_index)
  end
end

def partition(array, begin_index, end_index)
  pivot = array[end_index]
  j = begin_index
  for i in begin_index...end_index
    if array[i] < pivot
      array[i], array[j] = array[j], array[i]
      # increment the counter after the swap
      $quick_sort_counter += 1
      j += 1
    end
  end
  # increment the counter after the swap
  array[end_index], array[j] = array[j], array[end_index]
  $quick_sort_counter += 1
  j
end

def quicksort_running_time(array)
  # define globals here to reset their values at each test case
  $quick_sort_counter = 0
  $insertion_sort_counter = 0
  # call an insertion sort for the clone array
  insertion_sort(array.clone)
  # call a quick sort for the clone array
  advanced_quicksort(array.clone)

  $insertion_sort_counter - $quick_sort_counter
end
