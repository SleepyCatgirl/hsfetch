module Memory where
import System.IO
secondInList :: [a] -> a
secondInList (x:xs:xss) = xs
memoryTotal :: IO String
memoryTotal = readFile "/proc/meminfo" >>= (\x ->
                                return $ secondInList $ words $ (lines $ x) !! 0 )
--memoryTotalMB :: IO Integer
--memoryTotalMB = memoryTotal >>= (\x -> return $ floor $ (read x)/1000)
memoryTotalMB :: IO Float
memoryTotalMB = memoryTotal >>= (\x -> return $ (fromIntegral $ read x)/1000)
-- not needed function for now
memoryFree :: IO String
memoryFree = readFile "/proc/meminfo" >>= (\x ->
                                return $ secondInList $ words $ (lines $ x) !! 1 )
memoryUsed :: IO Integer
memoryUsed = memoryTotal >>= (\x -> memoryFree >>= (\y -> return  (floor (read x) - floor (read y))))


memoryUsedPrint = memoryUsedMB >>= (\x -> putStr $ show $ floor x)
memoryTotalPrint = memoryTotalMB >>= (\x -> putStr $ show $ floor x)
-- To be done
memoryUsedMB :: IO Float
memoryUsedMB = memoryUsed >>= (\x -> return $ (fromIntegral x)/1000)
