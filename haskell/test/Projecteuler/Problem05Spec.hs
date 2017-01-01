module Projecteuler.Problem05Spec (spec) where

import Test.Hspec
import Projecteuler.Problem05

spec :: Spec
spec = it "f" $ f 10 `shouldBe` 2520

