module Memory where
import System.IO
secondInList :: [a] -> a
secondInList (x:xs:xss) = xs
memoryTotal = readFile "/proc/meminfo" >>= (\x ->
                                return $ secondInList $ words $ (lines $ x) !! 0 )
--memoryTotalMB = memoryTotal >>= (\x -> return $ floor $ (read x)/1000)
-- not needed function for now

memoryFree = readFile "/proc/meminfo" >>= (\x ->
                                return $ secondInList $ words $ (lines $ x) !! 1 )

memoryUsed = memoryTotal >>= (\x -> memoryFree >>= (\y -> return $ floor (read x) - floor (read y)))



memoryUsedPrint = memoryUsed >>= (\x -> putStr $ show x)
memoryTotalPrint = memoryTotal >>= (\x -> putStr x)
-- To be done
