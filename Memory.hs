module Memory where
import System.IO
secondInList :: [a] -> a
secondInList (x:xs:xss) = xs
memoryFree :: IO String
memoryFree = readFile "/proc/meminfo" >>= (\x ->
                                return $ secondInList $ words $ (lines $ x) !! 0 )
memoryFreeGB = memoryFree >>= (\x -> putStr (read x))
-- To be done
