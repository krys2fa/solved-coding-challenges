def anagram(s)
  string_length = s.length
  return -1 if string_length.odd?

  blacklist = []

  half_string_length = string_length/2
  first_half_string = s[0...half_string_length]
  last_half_string = s[half_string_length...string_length]

  to_leave_count = 0
  first_half_string.split('').each do |x|
    unless blacklist.include?(x)
      if last_half_string.count(x) > 1 && (last_half_string.count(x) != first_half_string.count(x))
        to_leave_count += [first_half_string.count(x), last_half_string.count(x)].min
      else
        to_leave_count += last_half_string.count(x)
      end
    end

    blacklist << x

  end

  half_string_length - to_leave_count

end
