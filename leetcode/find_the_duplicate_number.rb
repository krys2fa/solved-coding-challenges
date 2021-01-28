# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  hash = Hash.new

  nums.each do |el|
    hash[el] = hash.has_key?(el) ? hash[el] + 1 : 1
  end

  puts hash

  hash.max_by {|key, value| value}[0]

end
