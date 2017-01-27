module Projecteuler.Problem17Spec (spec) where

import Projecteuler.Problem17
import Test.Hspec

spec :: Spec
spec = do
  it "f" $ f 1 `shouldBe` 3
  it "f" $ f 5 `shouldBe` 19
  it "f" $ f 5 `shouldBe` 19
  it "f" $ f 1000 `shouldBe` 21124
  it "f2" $ f2 (0, 0, 0, 1) `shouldBe` "one"
  it "f2" $ f2 (0, 0, 0, 5) `shouldBe` "five"
  it "f2" $ f2 (0, 0, 1, 0) `shouldBe` "ten"
  it "f2" $ f2 (0, 0, 1, 1) `shouldBe` "eleven"
  it "f2" $ f2 (0, 0, 2, 0) `shouldBe` "twenty"
  it "f2" $ f2 (0, 0, 2, 1) `shouldBe` "twenty-one"
  it "f2" $ f2 (0, 0, 5, 0) `shouldBe` "fifty"
  it "f2" $ f2 (0, 1, 0, 0) `shouldBe` "one hundred"
  it "f2" $ f2 (0, 1, 0, 1) `shouldBe` "one hundred and one"
  it "f2" $ f2 (0, 1, 0, 2) `shouldBe` "one hundred and two"
  it "f2" $ f2 (0, 2, 0, 0) `shouldBe` "two hundred"
  it "f2" $ f2 (0, 1, 1, 1) `shouldBe` "one hundred and eleven"
  it "f2" $ f2 (0, 1, 1, 5) `shouldBe` "one hundred and fifteen"
  it "f2" $ f2 (0, 9, 0, 1) `shouldBe` "nine hundred and one"
  it "f2" $ f2 (0, 3, 4, 2) `shouldBe` "three hundred and forty-two"
  it "f2" $ f2 (1, 0, 0, 0) `shouldBe` "one thousand"
  it "f2" $ f2 (1, 0, 0, 1) `shouldBe` "one thousand and one"
  it "f2" $ f2 (1, 0, 0, 2) `shouldBe` "one thousand and two"
  it "f2" $ f2 (1, 0, 1, 1) `shouldBe` "one thousand and eleven"
  it "f2" $ f2 (1, 0, 2, 1) `shouldBe` "one thousand and twenty-one"
  it "f2" $ f2 (1, 1, 2, 1) `shouldBe` "one thousand and one hundred and twenty-one"
  it "f2" $ f2 (1, 1, 1, 1) `shouldBe` "one thousand and one hundred and eleven"
  it "f2" $ f2 (2, 0, 0, 0) `shouldBe` "two thousand"
  it "f2" $ f2 (2, 0, 0, 1) `shouldBe` "two thousand and one"
  it "f2" $ f2 (2, 0, 0, 2) `shouldBe` "two thousand and two"
  it "f2" $ f2 (2, 1, 1, 1) `shouldBe` "two thousand and one hundred and eleven"
  it "f3" $ f3 1 `shouldBe` (0, 0, 0, 1)
  it "f3" $ f3 5 `shouldBe` (0, 0, 0, 5)
  it "f3" $ f3 10 `shouldBe` (0, 0, 1, 0)
  it "f3" $ f3 100 `shouldBe` (0, 1, 0, 0)
  it "f3" $ f3 1000 `shouldBe` (1, 0, 0, 0)
  it "f3" $ f3 9999 `shouldBe` (9, 9, 9, 9)

