import CPU
import Logo
import Distro

main :: IO ()
main = do
  printArch
  putStr "Distro: "
  getDistro
  putStr "Processor"
  processorFunc
