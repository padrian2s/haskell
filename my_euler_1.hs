fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

problem2 = 
    sum [ n | n <- takeWhile (< 4000000) fibs, even n]
    where
    fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

