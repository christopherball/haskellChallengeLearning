import Data.List (findIndex)
import Data.Maybe (fromJust)

fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

fibsIndex :: Int
fibsIndex = fromJust $ findIndex (> 4000000) fibs

answer :: Integer
answer = sum . filter even . drop 2 $ take fibsIndex fibs

main :: IO ()
main = print answer