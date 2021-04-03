import CPU
import Logo
import Distro

main :: IO ()
main = do
  distroChoose
  putStr "Distro: "
  getDistro
  putStr "Processor"
  processorFunc
