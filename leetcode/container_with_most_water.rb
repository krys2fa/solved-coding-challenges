def max_area(height)
  max_area = 0
  ptr1 = 0
  ptr2 = height.size - 1
  until ptr1 >= ptr2
    base = ptr2 - ptr1
    h = [height[ptr1], height[ptr2]].min
    area = base * h
    max_area = area if area > max_area
    if height[ptr1] < height[ptr2]
      ptr1 += 1
    else
      ptr2 -= 1
    end
  end
  max_area
end
