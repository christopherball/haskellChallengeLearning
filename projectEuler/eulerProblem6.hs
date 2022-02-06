sumOfSquares :: Num a => [a] -> a
sumOfSquares = sum . map (^ 2)

squareOfSum :: (Foldable t, Num a) => t a -> a
squareOfSum = (^ 2) . sum

diff :: Num a => [a] -> a
diff xs = squareOfSum xs - sumOfSquares xs

main :: IO ()
main = do
  print $ diff [1 .. 100]