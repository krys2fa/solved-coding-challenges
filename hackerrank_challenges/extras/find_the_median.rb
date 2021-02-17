def findMedian(arr)
  sorted = arr.sort

  if arr.length % 2 == 0
    return sorted[(arr.length - 1) / 2]
  else
    return sorted[arr.length / 2]
  end

end
