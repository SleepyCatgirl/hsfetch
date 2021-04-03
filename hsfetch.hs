import CPU
import Logo
import Distro
import Uptime
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
