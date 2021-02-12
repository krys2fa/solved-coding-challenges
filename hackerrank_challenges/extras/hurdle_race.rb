def hurdleRace(k, height)
  max_height = k
  arr_max_height = height.max
  return 0 if max_height >= arr_max_height
  return arr_max_height - max_height
end
