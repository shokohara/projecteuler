module Projecteuler.Problem15Spec (spec) where

import Projecteuler.Problem15
import Test.Hspec

spec :: Spec
spec = do
  it "f" $ f 2 2 `shouldBe` 6

