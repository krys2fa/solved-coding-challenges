def palindromeIndex(s)
  s = s.downcase
  left_index = 0
  right_index = s.size - 1

  while left_index < right_index && (s[left_index] == s[right_index])
    left_index += 1
    right_index -= 1
  end

  return left_index if palindrome?(s[0...left_index] + s[(left_index + 1)...s.size])
  return right_index if palindrome?(s[0...right_index] + s[(right_index + 1)...s.size])
  return -1

end

def palindrome?(s)
  s == s.reverse
end
