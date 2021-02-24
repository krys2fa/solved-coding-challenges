def divisibleSumPairs(n, k, ar)

  count = 0

  ar.each_with_index do |ele1, index|
    next_index = index + 1
    while next_index < ar.size do
      ele2 = ar[next_index]
      count += 1 if (ele1 + ele2) % k == 0
      next_index += 1
    end
  end
  return count

end
[1,2,3]
ele1 = 1
index = 0
next_index = 1
ele2 = 2

next_index = 2
ele2 = 3

ele1 = 2
index = 1
next_index = 2
ele2 = 3

next_index = 2
ele2 = 3
