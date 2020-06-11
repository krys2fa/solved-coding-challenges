def repeatedString(s, n)
  remainder_to_add = n % s.length
  times_repeated = n / s.length   
  (s.count("a") * times_repeated ) + s[0...remainder_to_add].count("a") 
end
