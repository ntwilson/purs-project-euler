module Problem4.Spec where

import Prelude

import Data.Array as Array
import Problem4 (isPalindrome, threeDigitProducts)
import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual, shouldSatisfy)

tests :: Spec Unit
tests = do
  describe "Problem4 Tests" do
    it "isPalindrome with palindrome number" do
      isPalindrome 12321 `shouldEqual` true
    it "isPalindrome with non-palindrome number" do
      isPalindrome 12345 `shouldEqual` false
    it "threeDigitProducts contains 906609" do
      threeDigitProducts `shouldSatisfy` (Array.elem 906609)
