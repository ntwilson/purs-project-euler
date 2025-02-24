module Problem3.Spec where

import Prelude

import Problem3 (smallestPrimeFactor, primeFactors)
import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)

spec :: Spec Unit
spec = describe "Problem3" do
  describe "smallestPrimeFactor" do
    it "returns 2 for 2" do
      smallestPrimeFactor 2.0 `shouldEqual` 2.0

    it "returns 3 for 3" do
      smallestPrimeFactor 3.0 `shouldEqual` 3.0

    it "returns 2 for 4" do
      smallestPrimeFactor 4.0 `shouldEqual` 2.0

    it "returns 5 for 25" do
      smallestPrimeFactor 25.0 `shouldEqual` 5.0

    it "returns 7 for 49" do
      smallestPrimeFactor 49.0 `shouldEqual` 7.0

  describe "primeFactors" do
    it "returns [2] for 2" do
      primeFactors 2.0 `shouldEqual` [2.0]

    it "returns [3] for 3" do
      primeFactors 3.0 `shouldEqual` [3.0]

    it "returns [2, 2] for 4" do
      primeFactors 4.0 `shouldEqual` [2.0, 2.0]

    it "returns [5, 5] for 25" do
      primeFactors 25.0 `shouldEqual` [5.0, 5.0]

    it "returns [7, 7] for 49" do
      primeFactors 49.0 `shouldEqual` [7.0, 7.0]

    it "returns [2, 3, 5] for 30" do
      primeFactors 30.0 `shouldEqual` [2.0, 3.0, 5.0]