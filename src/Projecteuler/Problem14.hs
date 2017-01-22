module Projecteuler.Problem14 where

import GHC.Exts
import Control.Arrow

resolve :: Integer
resolve = fst . last . sortWith snd . fmap (second length) . zip [1..1000000] $ fmap collatzSequence [1..1000000]

collatzSequence :: Int -> [Int]
collatzSequence n = f [n] where
  f :: Integral a => [a] -> [a]
  f [] = []
  f (1 : xs) = reverse $ 1 : xs
  f [x] = f (collatz x : [x])
  f (x : xs) = f (collatz x : x : xs)

collatz :: Integral a => a -> a
collatz n
  | even n = n `div` 2
  | otherwise = 3 * n + 1

