def staircase(n)
  width = n + 1
  spaces = n - 1
  n.times do
    spaces.times { print " "}
    (width - n).times {print "#"}
    print "\n"
    width += 1
    spaces -= 1
  end
end
