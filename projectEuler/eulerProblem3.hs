import Data.Numbers.Primes (primeFactors)

main :: IO ()
main = do
  putStrLn "Enter number to obtain largest prime factor: "
  num <- getLine
  let targetNum = read num :: Integer
  let answer = last $ primeFactors targetNum
  print answer