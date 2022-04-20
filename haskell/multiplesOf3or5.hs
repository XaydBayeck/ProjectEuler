normalAns = sum [x | x <- [3 .. 999], x `mod` 3 == 0 || x `mod` 5 == 0]

equalAns = sumE (fromIntegral $ div 999 3) 3 3 + sumE (fromIntegral $ div 999 5) 5 5 - sumE (fromIntegral $ div 999 15) 15 15
  where
    sumE n a1 d = n / 2 * (a1 + d * n)
