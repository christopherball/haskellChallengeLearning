isPythTriplet :: (Num a, Ord a) => a -> a -> a -> Bool
isPythTriplet a b c
  | a <= 0 || b <= 0 || c <= 0 = False
  | a < b && b < c && a ^ 2 + b ^ 2 == c ^ 2 = True
  | otherwise = False

getTripletProducts :: (Num a, Ord a) => [a] -> [a] -> [a] -> a -> [a]
getTripletProducts as bs cs sum =
  [ a * b * c
    | a <- as,
      b <- bs,
      c <- cs,
      a + b + c == sum,
      isPythTriplet a b c
  ]

main :: IO ()
main = do
  print . head $ getTripletProducts [1 .. 300] [1 .. 400] [1 .. 500] 1000