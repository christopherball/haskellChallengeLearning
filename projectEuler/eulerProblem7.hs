import Data.Numbers.Primes (primes)

main :: IO ()
main = do
  print $ primes !! 10000