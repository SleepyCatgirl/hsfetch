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
