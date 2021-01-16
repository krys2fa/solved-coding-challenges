def positive_number(array)
  new_array = array.sort

	length = new_array.length

	first = new_array[0]

	last = new_array[length-1]

  if last <= 0
		return 1
	else
	  num = 1
		while num <= last

		  if new_array.include?(num)
			  num += 1
			else
				return num
			end

		end

		return num

	end

end
