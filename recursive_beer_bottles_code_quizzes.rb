def bottles(n)
  if n == 0
   puts 'no more bottles of beer on the wall'
   return
  end

  puts "#{n} bottles of beer on the wall"
  bottles(n-1)
end

bottles(4)
