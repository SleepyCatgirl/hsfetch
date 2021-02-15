import CPU
import Distro

main :: IO()
main = do
  putStr "Distro: "
  getDistro
  putStr "Processor"
  processorFunc
