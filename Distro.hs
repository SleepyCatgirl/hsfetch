module Distro where
import System.IO

getDistro :: IO ()
getDistro = do
  handle <- openFile "/etc/os-release" ReadMode
  contents  <- hGetContents handle
  putStr (dropWhile (/='\"') ((lines $ contents) !! 0) ++ "\n")
  hClose handle
