module Uptime where
import System.IO
readTime = readFile "/proc/uptime" >>= (\x -> return $ head $ words x)
timeHours = readTime >>= (\x -> putStr $ show $ floor $ (read x)/3600)
