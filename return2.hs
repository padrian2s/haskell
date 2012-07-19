main = do
   a <- return "ll"
   b <- return "yeah!"
   putStrLn $ a ++ " " ++ b

