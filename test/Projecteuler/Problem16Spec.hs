module Projecteuler.Problem16Spec (spec) where

import Projecteuler.Problem16
import Test.Hspec

spec :: Spec
spec = it "f" $ f 15 `shouldBe` 26

