{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
module Projecteuler.Problem08 where

import Data.Char (digitToInt, isNumber)
import Data.FileEmbed (embedStringFile)

resolve :: Integer
resolve = toInteger $ f 13

f :: Int -> Int
f i = maximum . map product . listSeries [] i . stringToListInt $ filter isNumber $(embedStringFile "res/problem08.txt")

listSeries :: [[Int]] -> Int -> [Int] -> [[Int]]
listSeries r i xs = if length xs < i then r else listSeries (r ++ [take i xs]) i (drop 1 xs)

stringToListInt :: String -> [Int]
stringToListInt = map digitToInt

