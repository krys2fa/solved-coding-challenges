# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return false if s.length != t.length

  s_arr = s.split('')
  t_arr = t.split('')

  hash = Hash.new

  s_arr.each do |ele|
    hash[ele] = hash.has_key?(ele) ? hash[ele] += 1 : 1
  end

  t_arr.each do |ele|
    hash[ele] = hash.has_key?(ele) ? hash[ele] -= 1 : 1
  end

  hash.each do |key, val|
    return false if val != 0
  end

  return true

  # time complexity is O(n)

end
