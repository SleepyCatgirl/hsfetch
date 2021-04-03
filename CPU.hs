module CPU where
import System.IO

processorFunc :: IO ()
processorFunc = do
  handle <- openFile "/proc/cpuinfo" ReadMode
  contents <- hGetContents handle
  putStr (dropWhile (/=':') ((lines $ contents) !! 4) ++ "\n")
  hClose handle
--Version while using (>>=) operator
-- processorFunc = openFile "/proc/cpuinfo" ReadMode >>= (\x -> hGetContents x) >>= (\x -> putStr (dropWhile (/=':') ((lines $ x) !! 4) ++ "\n"))
