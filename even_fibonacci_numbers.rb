def even_fibonacci_sum(n)
  fibonacci = [1, 2]
  fibonacci_length = 2

  while fibonacci[fibonacci_length - 1] + fibonacci[fibonacci_length - 2] <= n
    fibonacci[fibonacci_length] = fibonacci[fibonacci_length - 1] + fibonacci[fibonacci_length - 2]
    fibonacci_length += 1
  end

  puts fibonacci.reduce(0){ |acc, val| val % 2 === 0 ? acc + val : acc }

end
