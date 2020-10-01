def sum(number)
  # (1..number).inject(:+)
  return number if number == 1

  number + sum(number - 1)
end

puts sum(4)
puts sum(10)
