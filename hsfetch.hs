import CPU
import Logo
import Distro
import Uptime
import Memory
main :: IO ()
main = do
  distroChoose
  putStr "Distro: "
  getDistro
  putStr "Uptime: "
  timeHours
  putStrLn " Hours"
  putStr "Processor"
  processorFunc
  putStr "Memory: "
  memoryUsedPrint
  putStr "/"
  memoryTotalPrint
  putStrLn ""
