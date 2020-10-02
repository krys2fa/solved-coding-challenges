def move(starting, goal)
  pegs = [1, 2, 3]
  result = ''
  if starting == 1 && goal == 3
    intermediate = 2
  elsif starting == 2 && goal == 3
    intermediate = 1
  elsif starting == 2 && goal == 1 || starting == 1 && goal == 2
    intermediate = 3
  end

  result << "#{starting}->#{intermediate}"
  result << " #{starting}->#{goal}"
  result << " #{intermediate}->#{goal}"

end

puts move(1, 3)
# => 1->2 1->3 2->3

puts move(2, 3)
# => 2->1 2->3 1->3
