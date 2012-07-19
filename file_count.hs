import System.Environment
import System.IO

main = toTry `catch` handler

toTry :: IO ()
toTry  = do (fileName:_) <- getArgs
            contents <- readFile fileName
            putStrLn $ "The file has " ++ show (length (lines contents)) ++ "lines"
handler e = putStrLn "Whops, had some trouble!"
