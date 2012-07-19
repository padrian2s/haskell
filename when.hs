import Control.Monad

main = do
    c <- getChar
    when (c /= ' ') $ do
        putChar $ reverse . c
        main

