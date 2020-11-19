def insertion_sort(array)
  unsorted = array[-1]
  array[-1] = array[-2]
  i = 1
  while i < array.length + 1
    if array[-i - 1].nil?
      array[-i] = unsorted
      puts array.join(' ')
      return
    end
    if array[-i - 1] < unsorted
      array[-i] = unsorted
      puts array.join(' ')
      return
    else
      array[-i] = array[-i - 1]
      puts array.join(' ')
      i += 1
    end
  end
end
