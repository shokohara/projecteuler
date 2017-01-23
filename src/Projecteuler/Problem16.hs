module Projecteuler.Problem16 where

import Data.Char

resolve :: Integer
resolve = toInteger $ f 1000

f n = sum . fmap digitToInt . show $ 2 ^ n

