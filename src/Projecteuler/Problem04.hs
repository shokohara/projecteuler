module Projecteuler.Problem04 where

import Data.List (sortBy)

resolve :: Integer
resolve = product $ largestPalindromeProduct [100..999] [100..999]

largestPalindromeProduct :: [Integer] -> [Integer] -> [Integer]
largestPalindromeProduct xs ys = take 1 . sortBy (flip compare) . filter (palindrome . show) $ [ x * y | x <- sortBy (flip compare) xs, y <- sortBy (flip compare) ys]

palindrome :: String -> Bool
palindrome x = x == reverse x

