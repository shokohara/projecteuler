module Projecteuler.Problem02 where

resolve :: Integer
resolve = sum . filter even . takeWhile (<= 4000000) $ fibs

fib :: Int -> Integer
fib n = fibs !! n

fibs :: [Integer]
fibs = 1 : 2 : zipWith (+) fibs (tail fibs)

