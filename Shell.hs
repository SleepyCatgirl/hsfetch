module Shell where
import System.IO
-- First read the user name
-- Then, write own implemetation of words, using : as separator
-- to properly read shell name from /etc/passwd
myWords "" = []
myWords sentence
        | sentence == [] = [[]]
        | otherwise = (takeWhile (/=':') sentence) : myWords(dropWhile (==':') (dropWhile (/=':') sentence))
readPasswd = readFile "/etc/passwd" >>= (\x -> putStrLn x)


-- Those parts will need to be worked on more later.
--
--myWords' "" = []
--myWords' sentence
--        | sentence == [] = [[]]
--        | otherwise = (takeWhile (/='/') sentence) : myWords'(dropWhile (=='/') (dropWhile (/='/') sentence))
--
--findHome :: [String] -> String
--findHome (x:xs)
--        | dropWhile (/= '/') x == "/home" = "home"
--        | otherwise = findHome xs
-- Try : Apply function to each String like [f "String", f "String2"]
-- function:
-- f x = head x
-- then f (head x)
