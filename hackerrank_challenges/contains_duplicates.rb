# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  sorted_nums = nums.dup.sort
  sorted_nums.each_cons(2) do |x, y|
    return true if x == y
  end
  return false
end
