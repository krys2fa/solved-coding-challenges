def longest_consecutive(nums)
  return 0 if nums.empty?
  nums.sort!
  length = 1
  longest_length = 1
  (1..(nums.length - 1)).each do |i|
    if nums[i] == nums[i - 1] + 1
      length += 1
    elsif nums[i] == nums[i - 1]
      next
    else
      longest_length = length if length > longest_length
      length = 1
    end
  end
  longest_length = length if length > longest_length
  longest_length
end
