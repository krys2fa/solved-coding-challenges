def flatten(array, result=[])

  array.each do |arr|
    if arr.kind_of?(Array)
      flatten(arr, result)
    else
      result << arr
    end
  end
  result
end

print flatten([1, 2, [3]])
