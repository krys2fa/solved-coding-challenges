require 'Date'

def solution(y, a, b, w)
  leap = true if y % 4 == 0

  months = {
   'January' =>  31,
   'February' => leap == true ? 29 : 28 ,
   'March' => 31,
   'April' => 30,
   'May' => 31,
   'June' => 30,
   'July' => 31,
   'August' => 31,
   'September' => 30,
   'October' => 31,
   'November' => 30,
   'December' => 31
  }

  days = {
    'Monday' => 1,
    'Tuesday' => 2,
    'Wednesday' => 2,
    'Thursday' => 3,
    'Friday' => 4,
    'Saturday' => 5,
    'Sunday' => 0,
  }
  first_month = months[a]
  last_month = months[b]

  total_days = first_month + last_month
  day_of_week = days[w]
  # puts day_of_week

   puts Date.new(2014, 1, 1).wday

  if day_of_week != 0
  # puts ((total_days - 7) / 7).floor
    # puts ((total_days - 7) / 7).floor
  else
  puts false
    puts (total_days / 7).floor
  end
end

solution(2014, 'May', 'June', 'Wednesday')
