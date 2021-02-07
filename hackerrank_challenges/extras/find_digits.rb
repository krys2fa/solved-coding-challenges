def findDigits(n)
  counter = 0
  digits = n.to_s.split('').map {|digit| digit.to_i}
  digits.each do |digit|
    unless digit == 0
      counter += 1 if n % digit == 0
    end
  end

  return counter

end
