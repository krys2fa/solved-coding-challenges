def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  return 1 if number == 1

  middle = ((min_interval + max_interval)/2).floor

  if middle ** 2 == number
    return middle
  elsif middle ** 2 > number
    sqrt_recursive(number, min_interval, middle)
  else
    sqrt_recursive(number, middle, max_interval)
  end

end

puts sqrt(25)
puts sqrt(7056)
