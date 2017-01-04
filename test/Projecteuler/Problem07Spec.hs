module Projecteuler.Problem07Spec (spec) where

import Test.Hspec
import Projecteuler.Problem07

spec :: Spec
spec = do
  it "f" $ f 6 `shouldBe` 13
  it "isPrime" $ do
    let primes = [7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]
    map isPrime primes `shouldBe` replicate (length primes) True

