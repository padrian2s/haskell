import System.IO

main = do
     todoItem <- getLine
     putStrLn "this is very odd!"
     appendFile "todo.txt" (todoItem ++ "\n")

