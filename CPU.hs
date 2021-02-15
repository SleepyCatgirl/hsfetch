module CPU where
import System.IO

processorFunc :: IO ()
processorFunc = do
  handle <- openFile "/proc/cpuinfo" ReadMode
  contents <- hGetContents handle
  putStr (dropWhile (/=':') ((lines $ contents) !! 4) ++ "\n")
  hClose handle
