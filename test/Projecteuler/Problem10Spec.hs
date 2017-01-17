module Projecteuler.Problem10Spec (spec) where

import Projecteuler.Problem10
import Test.Hspec

spec :: Spec
spec = it "sieveOfEratosthenes" $ sieveOfEratosthenes 10 `shouldBe` [2, 3, 5, 7]

