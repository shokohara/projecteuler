module Projecteuler.Problem01Spec (spec) where

import Test.Hspec
import qualified Projecteuler.Problem01 as P01

spec :: Spec
spec = it "f" $ P01.f 10 `shouldBe` 23

