def getMoneySpent(keyboards, drives, b)
  total_amount = []
  keyboards.each do |x|
    drives.each do |y|
      total_amount << x + y if x + y <= b
    end
  end
  return -1 if total_amount.empty?
  return total_amount.max
end
