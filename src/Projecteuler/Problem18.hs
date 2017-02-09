{-# LANGUAGE QuasiQuotes #-}
module Projecteuler.Problem18 where

import Data.Char
import Data.String.Here
import Debug.Trace

trace' :: Show a => a -> a
trace' x = trace (show x) x

x :: [[Int]]
x = fmap (fmap digitToInt) . concatMap words . lines $ [here|3
7 4
2 4 6
8 5 9 3|]

xx :: [[(Int, Int)]]
xx = zip [0..] <$> x

a :: [[Int]]
a = (\v -> 0 : [v]) <$> [0..1]

d :: [[Int]] -> [Int] -> [[Int]]
d ass bs = concatMap (\x -> fmap (\v -> x ++ [v]) . take 2 . drop (sum . take 1 . reverse $ x) $ bs) ass

resolve :: Integer
resolve = toInteger $ sum $ fmap maximum x

