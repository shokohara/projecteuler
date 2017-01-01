module Projecteuler.Problem03 where

resolve :: Integer
resolve = maximum $ listPrimeFactor 600851475143 []

listPrimeFactor :: Integer -> [Integer] -> [Integer]
listPrimeFactor 1 ns = ns
listPrimeFactor n ns = listPrimeFactor (n `div` x) (ns ++ [x])
  where x = head . filter (\v-> n `mod` v == 0) $ [2..] :: Integer

