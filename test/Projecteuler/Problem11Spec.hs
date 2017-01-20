module Projecteuler.Problem11Spec (spec) where

import Projecteuler.Problem11
import Test.Hspec

spec :: Spec
spec = do
  it "ff" $ do
    fmap (ff 4) [[1..4]] `shouldBe` [[[1..4]]]
    fmap (ff 4) [[1..5]] `shouldBe` [[[1..4], [2..5]]]
    fmap (ff 4) [[1..6]] `shouldBe` [[[1..4], [2..5], [3..6]]]
    fmap (ff 4) [[1..7]] `shouldBe` [[[1..4], [2..5], [3..6], [4..7]]]
  it "diagonallyUpperRight" $
    diagonallyUpperRight [[1..3], [1..3], [1..3]] `shouldBe` [[1, 0, 0], [2, 1, 0], [3, 2, 1]]
  it "diagonallyUpperLeft" $
    diagonallyUpperLeft [[1..3], [1..3], [1..3]] `shouldBe` [[1, 2, 3], [2, 3, 0], [3, 0, 0]]

