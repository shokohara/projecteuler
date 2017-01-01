module Projecteuler.Problem06Spec (spec) where

import Test.Hspec
import Projecteuler.Problem06

spec :: Spec
spec = it "f" $ f 10 `shouldBe` 2640

