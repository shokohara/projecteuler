module Projecteuler.Problem07 where

resolve = f 10001

f :: Int -> Integer
f x = last . take x . filter isPrime $ [2..]

isPrime :: Integer -> Bool
isPrime x = all (\n -> 0 /= x `mod` n) [2..x-1]

