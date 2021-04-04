module Logo where
import System.IO
--getDistro :: IO ()
readDistro = openFile "/etc/os-release" ReadMode >>= (\x -> hGetContents x) >>= (\x -> return (dropWhile (/='\"') ((lines $ x) !! 0) ++ "\n"))
-- Above, version with using openFile handle, below, just readFile
--getDistro :: IO String
-- Modified, to not print, just to return a monad
--getDistro = readFile "/etc/os-release" >>= (\x -> return (dropWhile (/='\"') ((lines $ x) !! 0)))
getArch :: [String]
getArch = ["        /\\         ",
           "       /  \\        ",
          "      /    \\      ",
          "     /  __  \\      ",
          "    /  (  )  \\     ",
          "   /___|  |___\\    "]
getFallback :: [String]
getFallback = ["    .--.",
              "   |o_o |",
              "   |:_/ |",
              "  //   \\ \\",
              " (|     | )",
              "/'\\_   _/`\\\\",
              "\\___\\=(___//"]
-- mapM_ ignores anything but the side effects (So in this case, it will only map putrStrl, and do only that)
-- otherwise it would print effects/results aswell
printArch :: IO ()
printArch = mapM_ putStrLn getArch
printFallback :: IO ()
printFallback = mapM_ putStrLn getFallback
-- Choosing Distro
--distroChoose = getDistro >>= (\x -> if x == "\"Arch Linux\"\n" then putStrLn "Arch" else putStrLn x)
distroChoose = readDistro >>= (\x -> case x of
                                 "\"Arch Linux\"\n" -> printArch
                                 _ -> printFallback)
