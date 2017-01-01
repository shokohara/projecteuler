module Projecteuler.Problem09Spec (spec) where

import Projecteuler.Problem09
import Test.Hspec

spec :: Spec
spec = it "f" $ f 12 `shouldBe` 60

