module Projecteuler.Problem03Spec (spec) where

import Test.Hspec
import Projecteuler.Problem03

spec :: Spec
spec = it "listPrimeFactor" $ listPrimeFactor 13195 [] `shouldBe` [5, 7, 13, 29]

