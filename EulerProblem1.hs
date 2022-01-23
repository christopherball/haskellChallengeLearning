filtering :: Integral a => a -> a -> [a]
filtering min max = filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0) [min .. max]

answer :: Integer
answer = sum (filtering 1 999)

main :: IO ()
main = print answer