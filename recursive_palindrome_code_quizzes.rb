def palindrome(string)
  return true if string.length == 0 || string.length == 1
  if string[0] == string[-1]
    palindrome(string[1..-2])
  else
    return false
  end
end

puts palindrome('raceca')
