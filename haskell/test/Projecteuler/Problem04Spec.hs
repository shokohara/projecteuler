module Projecteuler.Problem04Spec (spec) where

import Test.Hspec
import Projecteuler.Problem04

spec :: Spec
spec = it "palindrome" $ do
  palindrome (show 0) `shouldBe` True
  palindrome (show 101) `shouldBe` True
  palindrome (show 1001) `shouldBe` True

