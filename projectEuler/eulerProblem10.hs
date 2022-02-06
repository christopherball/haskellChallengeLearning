import Data.Numbers.Primes (primes)

main :: IO ()
main = do
  print . sum $ takeWhile (< 2000000) primes