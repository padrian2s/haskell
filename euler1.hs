import Text.Printf
import Control.Exception
import System.CPUTime


-- program

isMultiple		::	Int -> Int -> Bool
isMultiple n x	= 	(x `mod` n) == 0

is5				::	Int -> Bool
is5 x 			=	isMultiple 5 x

is3				::	Int -> Bool
is3 x			=	isMultiple 3 x


problem1		::	[Int] -> Int
problem1 []		= 	0
problem1 (x:xs)		=	if is3 x || is5 x
					then
						x + problem1 xs
					else
						0 + problem1 xs



-- utils

time 			::	IO t -> IO t
time a 			=	do
    start <- getCPUTime
    v <- a
    end   <- getCPUTime
    let diff = (fromIntegral (end - start)) / (10^12)
    printf "Computation time: %0.16f sec\n" (diff :: Double)
    return v
 
main 			=	do
    putStrLn "Starting..."
    time $ problem1 [1..999] `seq` return ()
    printf "Result: %d\n" (problem1 [1..999])
    putStrLn "Done."

