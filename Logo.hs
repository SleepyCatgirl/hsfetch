module Logo where
getArch :: [String]
getArch = ["        /\\         ",
           "       /  \\        ",
          "      /\\   \\       ",
          "     /  __  \\      ",
          "    /  (  )  \\     ",
          "   / __|  |__\\\\    "]
-- mapM_ ignores anything but the side effects (So in this case, it will only map putrStrl, and do only that)
-- otherwise it would print effects/results aswell
printArch :: IO ()
printArch = mapM_ putStrLn getArch
