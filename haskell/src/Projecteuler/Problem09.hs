module Projecteuler.Problem09 where

import Data.Maybe (listToMaybe, fromMaybe)

resolve :: Integer
resolve = toInteger $ f 1000

f :: Int -> Int
f n = fromMaybe 0 . listToMaybe $ [a * b * c | a <- [1..n], b <- [1..n], c <- [1..n], a ^ 2 + b ^ 2 == c ^ 2, a < b, b < c, a + b + c == n]

