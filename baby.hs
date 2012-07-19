doubleMe x = x + x 
doubleUs x y = x*2 + y*2
doubleF x y = doubleMe x + doubleUs x y
doubleSmallNumber x = if x > 100 then x else x*2
someF' x = (if x > 100 then x else x+2)+1
conanO'Brien = "It's a-me, Conan..."
bigList x = sum [1..2222]
boomBangs xs = [if x<10 then "BOOM" else "BANG" | x <-xs, odd x]
len xs = sum [1 | _ <- xs] 

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
    | bmi <= 18.5 = "You are under"
    | otherwise = "you're a whale"
    where bmi = weight / height ^ 2


head' :: [a] -> a
head' [] = error "Can't call head on null"
head' (x:_) = x


second :: (a,b,c) -> b
second (_, y, _) = y


quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort [a | a <- xs, a <= x]
        biggerSorted = quicksort [a | a <- xs, a > x]
    in
    smallerSorted ++ [x] ++ biggerSorted


str2message :: String -> String
str2message input = "Data " ++ input

str2action :: String -> IO ()
str2action = putStrLn . str2message

numbers :: [Int]
numbers = [1..10]


factorial 0 = 1
factorial n = n * factorial (n-1)

third :: (a, b, c) -> c
third (_, _, z) = z

initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
   where (f:_) = firstname
         (l:_) = lastname


cylinder r h = 
   let sideArea = 2 * pi * r * h
       topArea = pi * r ^2
   in sideArea +2 * topArea


applyTwice f x = f (f x)

chain 1 = [1]
chain n 
      | even n = n:chain (n `div` 2)
      | odd  n = n:chain (n*3+1)


