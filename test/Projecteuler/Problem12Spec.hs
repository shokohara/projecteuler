module Projecteuler.Problem12Spec (spec) where

import Projecteuler.Problem12
import Test.Hspec

spec :: Spec
spec = do
  it "list" $ take 10 triangularNumbers `shouldBe` [1, 3, 6, 10, 15, 21, 28, 36, 45, 55]
  it "divisor" $ do
    divisors 10 `shouldBe` [1, 2, 5, 10]
    divisors 15 `shouldBe` [1, 3, 5, 15]
    divisors 28 `shouldBe` [1, 2, 4, 7, 14, 28]
  it "f" $ (head . f $ 5) `shouldBe` 28

