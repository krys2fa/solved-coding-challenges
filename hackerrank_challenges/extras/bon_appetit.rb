def bonAppetit(bill, k, b)
  s = bill.inject(0) { |sum, x| sum + x} - bill[k]

#    puts s

   b_actual = s/2

#    puts b_actual

   if b_actual == b
     puts "Bon Appetit"
   else
     p b - b_actual
   end

end

#6
# n=10
# k=6
# bill = [72, 53, 60, 66, 90, 62, 12, 31, 36, 94]
# b = 288

n=4
k=1
bill = [3, 10, 2, 9]
b = 7
bonAppetit(bill, k, b)
