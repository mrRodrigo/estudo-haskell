fib 0 = 0
fib 1 = 1
fib n = if n > 1 then fib(n-1) + fib(n-2) else 0

-- Guard
fib n | (n == 0) = 0
      | (n == 1) = 1
      | (n > 1) = fib(n-1) + fib(n-2)
      | otherwise  = 0
