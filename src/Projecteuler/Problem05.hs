module Projecteuler.Problem05 where

resolve = f 20

f :: Integer -> Integer
f x = head [s | s <- [1..], all (\v -> s `mod` v == 0) (reverse [1..x])]

