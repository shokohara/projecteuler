module Projecteuler.Problem15 where

resolve :: Integer
resolve = toInteger $ f 20 20

f :: Integral t => t -> t -> t
f x y = fact (x + y) `div` (fact x * fact y)

fact :: (Num t, Eq t) => t -> t
fact 0 = 1
fact n = n * fact (n - 1)

