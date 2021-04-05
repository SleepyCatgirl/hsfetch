module Distro where
import System.IO

getDistro :: IO ()
getDistro = do
  handle <- openFile "/etc/os-release" ReadMode
  contents  <- hGetContents handle
  putStr (dropWhile (/='\"') ((lines $ contents) !! 0) ++ "\n")
  hClose handle
-- Version with using >>= operator
-- getDistro = openFile "/etc/os-release" ReadMode >>= (\x -> hGetContents x) >>= (\x -> putStr (dropWhile (/='\"') ((lines $ x) !! 0) ++ "\n"))
-- can be rewritting not using monads, but just functor
-- readDistro :: IO String
-- readDistro = head . lines . dropWhile (/= '"') <$> readFile "/etc/os-release"
