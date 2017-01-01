module Projecteuler.Problem01(resolve, f) where

resolve :: Integer
resolve = f 1000

f :: Integral a => a -> a
f n = sum [ x | x <- [1..n-1], x `mod` 3 == 0 || x `mod` 5 == 0]

