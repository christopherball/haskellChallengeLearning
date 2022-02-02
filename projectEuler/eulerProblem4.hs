import Data.List (sort)

numRange :: [Integer]
numRange = [100 .. 999]

isPalindrone :: Show a => a -> Bool
isPalindrone x = show x == reverse (show x)

cartProd :: Num a => [a] -> [a] -> [a]
cartProd xs ys = [x * y | x <- xs, y <- ys]

main :: IO ()
main = do
  print . maximum . filter isPalindrone $ cartProd numRange numRange