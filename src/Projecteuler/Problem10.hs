module Projecteuler.Problem10 where

resolve :: Integer
resolve = toInteger $ sum $ sieveOfEratosthenes 2000000

sieveOfEratosthenes :: Int -> [Int]
sieveOfEratosthenes n = f (fromIntegral n) [2..n] [] where
  f :: Double -> [Int] -> [Int] -> [Int]
  f m (x : xs) ps
    | sqrt m <= fromIntegral x = reverse ps ++ x : xs
    | otherwise = f m (filter (\v -> v `mod` x /= 0) xs) (x : ps)
  f _ _ _ = []

