fatorial 0 = 1
fatorial n = fatorial(n-1) * n


-- guard

fatorial n | (n == 0) = 1
           | otherwise = fatorial(n-1) * n
