module Projecteuler.Problem18Spec (spec) where

import Projecteuler.Problem18
import Test.Hspec

spec :: Spec
spec = it "f" $ f 12 `shouldBe` 60

