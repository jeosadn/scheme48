module Main where

import System.Environment

main :: IO ()
main = do
  args <- getArgs
  user <- getLine
  putStrLn
    ("Hello, " ++
     args !! 0 ++
     " " ++
     args !! 1 ++
     " " ++
     user ++
     ", " ++
     args !! 2 ++
     "+" ++ args !! 3 ++ "=" ++ show (read (args !! 2) + read (args !! 3)))
