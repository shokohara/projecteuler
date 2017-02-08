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

z :: [[Int]] -> [Int] -> [[Int]]
z ass bs = concatMap (\as -> fmap (\b -> as ++ [b]) . filter (last as <=) . filter (last as + 1 >=) $ bs) ass

a :: [[Int]]
a = (\v -> 0 : [v]) <$> [0..1]

--b :: [[Int]] -> [Int] -> [[Int]]
--b ass bs = concatMap (\x -> fmap (\v -> x ++ [v]) $ take 2 $ drop (last x) $ bs) ass
--b :: [[Int]]
--b = concatMap (\x -> fmap (\v -> x ++ [v]) . take 2 . drop (last x) [0..2]) [[0,0],[0,1]]
--b = concatMap (\x -> trace' $ fmap (\v -> x ++ [v]) $ filter (last x + 1 >=) . filter (last x <=) $ [0..2]) b
d :: [[Int]] -> [Int] -> [[Int]]
d ass bs = concatMap (\x -> fmap (\v -> x ++ [v]) . take 2 . drop (last x) $ bs) ass

--c = concatMap (\x -> trace' $ fmap (\v -> x ++ [v]) $ take 2 $ drop (last x) $ [0..3]) b
--c = fmap (\x -> trace' $ fmap (\v -> x ++ [v]) $ filter (last x + 1 >=) . filter (last x <=) $ [0..3]) b
y :: Int
--y = sum . foldl (\xs x -> 0) 0 xx
y = sum . fmap (\xs -> sum . fmap snd . take 2 . drop (length xs - 1) $ xs) $ xx
--y = sum . fmap (\xs -> (\(v) -> foldl (+) 0 v) . take 2 . drop (length xs - 1) $ xs) $ x
--y = sum . fmap (\xs -> (\(i, v) -> foldl (+) 0 v) . take 2 . drop (length xs - 1) $ xs) $ xx
--y = sum $ fmap maximum x

resolve :: Integer
resolve = toInteger $ sum $ fmap maximum x

