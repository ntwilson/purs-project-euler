module Problem5.Spec where

import Prelude

import Problem5 (isDivisibleBy, isDivisibleByAll)
import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)

tests :: Spec Unit
tests = do
  describe "Problem5 Tests" do
    it "isDivisibleBy with divisible numbers" do
      (10 `isDivisibleBy` 2) `shouldEqual` true
    it "isDivisibleBy with non-divisible numbers" do
      (10 `isDivisibleBy` 3) `shouldEqual` false
    it "isDivisibleByAll with all divisible numbers" do
      isDivisibleByAll [1, 2, 5] 10 `shouldEqual` true
    it "isDivisibleByAll with some non-divisible numbers" do
      isDivisibleByAll [1, 2, 3] 10 `shouldEqual` false
