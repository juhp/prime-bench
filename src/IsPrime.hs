module IsPrime (isPrime) where

isPrime :: [Integer] -> Integer -> Bool
isPrime ps n = all notDividedBy (takeWhile (\i -> i*i <= n) ps)
  where
    notDividedBy m = n `mod` m /= 0
