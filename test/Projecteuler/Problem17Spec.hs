module Projecteuler.Problem17Spec (spec) where

import Projecteuler.Problem17
import Test.Hspec

spec :: Spec
spec = do
  it "moddiv" $ do
    256 `mod` 10 `shouldBe` 6
    256 `mod` 100 `div` 10 `shouldBe` 5
    256 `mod` 1000 `div` 100 `shouldBe` 2
    1024 `mod` 10000 `div` 1000 `shouldBe` 1
  it "f" $ f 1 `shouldBe` 3
  it "f" $ f 5 `shouldBe` 19
  it "f" $ f 5 `shouldBe` 19
  it "f" $ f 1000 `shouldBe` 21124
  it "f2" $ f2 0001 `shouldBe` "one"
  it "f2" $ f2 0005 `shouldBe` "five"
  it "f2" $ f2 0010 `shouldBe` "ten"
  it "f2" $ f2 0011 `shouldBe` "eleven"
  it "f2" $ f2 0020 `shouldBe` "twenty"
  it "f2" $ f2 0021 `shouldBe` "twenty-one"
  it "f2" $ f2 0050 `shouldBe` "fifty"
  it "f2" $ f2 0100 `shouldBe` "one hundred"
  it "f2" $ f2 0101 `shouldBe` "one hundred and one"
  it "f2" $ f2 0102 `shouldBe` "one hundred and two"
  it "f2" $ f2 0200 `shouldBe` "two hundred"
  it "f2" $ f2 0111 `shouldBe` "one hundred and eleven"
  it "f2" $ f2 0115 `shouldBe` "one hundred and fifteen"
  it "f2" $ f2 0901 `shouldBe` "nine hundred and one"
  it "f2" $ f2 0342 `shouldBe` "three hundred and forty-two"
  it "f2" $ f2 1000 `shouldBe` "one thousand"
  it "f2" $ f2 1001 `shouldBe` "one thousand and one"
  it "f2" $ f2 1002 `shouldBe` "one thousand and two"
  it "f2" $ f2 1011 `shouldBe` "one thousand and eleven"
  it "f2" $ f2 1021 `shouldBe` "one thousand and twenty-one"
  it "f2" $ f2 1121 `shouldBe` "one thousand and one hundred and twenty-one"
  it "f2" $ f2 1111 `shouldBe` "one thousand and one hundred and eleven"
  it "f2" $ f2 2000 `shouldBe` "two thousand"
  it "f2" $ f2 2001 `shouldBe` "two thousand and one"
  it "f2" $ f2 2002 `shouldBe` "two thousand and two"
  it "f2" $ f2 2111 `shouldBe` "two thousand and one hundred and eleven"

