module Projecteuler.Problem12 where

resolve :: Integer
resolve = toInteger $ head $ f 500

triangularNumber :: Int -> Int
triangularNumber n = n * (n + 1) `div` 2

triangularNumbers :: [Int]
triangularNumbers = [triangularNumber x | x <- [1..]]

divisors :: Int -> [Int]
divisors n = [x | x <- [1..n], n `mod` x == 0]

f :: Int -> [Int]
f n = take 1 [x | x <- triangularNumbers, n < (length . divisors $ x)]

