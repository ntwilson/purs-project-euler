module Test.Problem7.Spec where

import Prelude

import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)
import Problem7 (nthPrime)

spec :: Spec Unit
spec = describe "Problem7" do
  it "finds the 1st prime" do
    nthPrime 1 `shouldEqual` 2

  it "finds the 2nd prime" do
    nthPrime 2 `shouldEqual` 3

  it "finds the 3rd prime" do
    nthPrime 3 `shouldEqual` 5

  it "finds the 4th prime" do
    nthPrime 4 `shouldEqual` 7

  it "finds the 5th prime" do
    nthPrime 5 `shouldEqual` 11

  it "finds the 6th prime" do
    nthPrime 6 `shouldEqual` 13