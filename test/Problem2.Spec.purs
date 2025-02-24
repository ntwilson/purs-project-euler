module Problem2.Spec where

import Prelude

import Data.List.Lazy as List
import Problem2 (fibonacci, fibonacciList)
import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)

spec :: Spec Unit
spec = describe "Problem2" do
  it "fibonacci" do
    (fibonacci <$> [0,1,2,3,4,5,6,10]) `shouldEqual` [0,1,1,2,3,5,8,55]

  it "fibonacci sequence" do
    List.take 7 fibonacciList `shouldEqual` List.fromFoldable [0,1,1,2,3,5,8]
