-- test
data Name = Name1 String
data Person = Person { name :: String, dob :: String, age :: Int } deriving (Show, Eq, Read)

sum' :: (Num a) => [a] -> a  
sum' [] = 0  
sum' (x:xs) = x + sum' xs  


-- bmiTell :: (RealFloat a) => a -> String  
bmiTell weight height
    | bmi <= skiny = "<= Skiny"
    | bmi >= fat = ">= Fat"
    | otherwise = "Otherwise"
    where bmi = weight / height
          (skiny, fat) = (12, 13)


initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
   where (f:_) = firstname
         (l:_) = lastname

head' :: [a] -> a
head' xs = case xs of [] -> error "No head"
                      (x:_) -> x

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2, bmi >= 25.0]


chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
    | even n = n:chain (n `div` 2)
    | odd n  = n:chain (n*3 + 1)


sumList :: [Float] -> Float
sumList [] = 0
sumList (x:xs) = x + sumList xs



chain2 1 = [1]
chain2 n = n:chain (n*2)


data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)



data TrafficLight = Red | Yellow | Green

instance Eq TrafficLight where
    Red == Red = True
    Green == Green = True
    Yellow == Yellow = True
    _ == _ = False

class YesNo a where
    yesno :: a -> Bool

instance YesNo Int where
    yesno 0 = False
    yesno _ = True

instance YesNo [a] where
    yesno [] = False
    yesno _  = True

instance YesNo TrafficLight where
    yesno Red = False
    yesno _   = True

yesnoIf :: (YesNo y) => y -> a -> a -> a
yesnoIf yesnoVal yesResult noResult = if yesno yesnoVal then yesResult else noResult


data Barry t k p = Barry { yabba :: p, dabba :: t k }

instance Functor (Barry a b) where  
  fmap f (Barry {yabba = x, dabba = y}) = Barry {yabba = f x, dabba = y}

