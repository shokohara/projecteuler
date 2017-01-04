module Projecteuler.Problem08Spec (spec) where

import Projecteuler.Problem08
import Test.Hspec

spec :: Spec
spec = it "f" $ f 4 `shouldBe` 5832

