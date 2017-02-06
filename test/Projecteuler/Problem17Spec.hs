module Projecteuler.Problem17Spec (spec) where

import Projecteuler.Problem17
import Test.Hspec

spec :: Spec
spec = do
  it "moddiv" $ 256 `mod` 10 == 6
  it "moddiv" $ 256 `mod` 100 `div` 10 == 5
  it "moddiv" $ 256 `mod` 1000 `div` 100 == 2
  it "moddiv" $ 1024 `mod` 10000 `div` 1000 == 1
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
  it "f3" $ f3 1 `shouldBe` (0, 0, 0, 1)
  it "f3" $ f3 5 `shouldBe` (0, 0, 0, 5)
  it "f3" $ f3 10 `shouldBe` (0, 0, 1, 0)
  it "f3" $ f3 100 `shouldBe` (0, 1, 0, 0)
  it "f3" $ f3 1000 `shouldBe` (1, 0, 0, 0)
  it "f3" $ f3 9999 `shouldBe` (9, 9, 9, 9)

