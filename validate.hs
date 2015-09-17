import System.Environment
import Data.List.Split
import Data.List

split' = splitOn "|"

header' = "COL1|COL2|COL3"
confHeader = "COL1|COL3|COL2"

key k = elemIndex k
readConf k = key k $ split' header'
row  = sort . map readConf $ split' confHeader
row' = [ x | Just x <- row]

--work = map readConf row'

main = do
     args <- getArgs
     f <- readFile (args !! 0)
     let s = lines f
     mapM_ putStrLn $ s
     return ()
