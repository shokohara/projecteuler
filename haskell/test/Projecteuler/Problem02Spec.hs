module Projecteuler.Problem02Spec (spec) where

import Test.Hspec
import Projecteuler.Problem02

spec :: Spec
spec = do
  it "fibs" $
    take 10 fibs `shouldBe` [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
  it "fib" $
    map fib [0..9] `shouldBe` [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]

