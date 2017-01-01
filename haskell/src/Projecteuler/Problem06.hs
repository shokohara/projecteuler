module Projecteuler.Problem06 where

resolve :: Integer
resolve = f 100

f :: Integer -> Integer
f x = (square . sum $ [1..x]) - sum (map square [1..x])

square :: Num a => a -> a
square x = x * x

