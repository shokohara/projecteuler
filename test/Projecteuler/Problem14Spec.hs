module Projecteuler.Problem14Spec (spec) where

import Projecteuler.Problem14
import Test.Hspec

spec :: Spec
spec = do
  it "collatz" $ collatz <$> [24, 12, 6, 3, 10, 5, 16, 8, 4, 2] `shouldBe` [12, 6, 3, 10, 5, 16, 8, 4, 2, 1]
  it "collatzSequence" $ collatzSequence 24 `shouldBe` [24, 12, 6, 3, 10, 5, 16, 8, 4, 2, 1]

