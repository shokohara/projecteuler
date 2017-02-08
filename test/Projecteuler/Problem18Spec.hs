module Projecteuler.Problem18Spec (spec) where

import Projecteuler.Problem18
import Test.Hspec

spec :: Spec
spec = do
 -- it "y" $ y `shouldBe` 23
  it "y" $ a `shouldBe` [[0,0],[0,1]]
--  it "y" $ b `shouldBe` [[0,0,0],[0,0,1],[0,1,1],[0,1,2]]
  it "z" $ d [[0]] [0..1] `shouldBe` [[0,0],[0,1]]
  it "z" $ d [[0,0],[0,1]] [0..2] `shouldBe` [[0,0,0],[0,0,1],[0,1,1],[0,1,2]]
  it "z" $ d [[0,0,0],[0,0,1],[0,1,1],[0,1,2]] [0..3] `shouldBe` [[0,0,0,0],[0,0,0,1],[0,0,1,1],[0,0,1,2],[0,1,1,1],[0,1,1,2],[0,1,2,2],[0,1,2,3]]
  it "z" $ d [[]] [0] `shouldBe` [[0]]
  it "z" $ d [[0]] [0..1] `shouldBe` [[0,0],[0,1]]
  it "z" $ d (d [[0]] [0..1]) [0..2] `shouldBe` [[0,0,0],[0,0,1],[0,1,1],[0,1,2]]
  it "z" $ d (d (d [[0]] [0..1]) [0..2]) [0..3] `shouldBe` [[0,0,0,0],[0,0,0,1],[0,0,1,1],[0,0,1,2],[0,1,1,1],[0,1,1,2],[0,1,2,2],[0,1,2,3]]
--  it "z" $ z b [0..3] `shouldBe` [[0,0,0,0],[0,0,0,1],[0,0,1,1],[0,0,1,2],[0,1,1,1],[0,1,1,2],[0,1,2,2],[0,1,2,3]]
--  it "z" $ z (z b [0..3]) [0..4] `shouldBe` [[0,0,0,0,0],[0,0,0,0,1],[0,0,0,1,1],[0,0,0,1,2],[0,0,1,1,1],[0,0,1,1,2],[0,0,1,2,2],[0,0,1,2,3],[0,1,1,1,1],[0,1,1,1,2],[0,1,1,2,2],[0,1,1,2,3],[0,1,2,2,2],[0,1,2,2,3],[0,1,2,3,3],[0,1,2,3,4]]

