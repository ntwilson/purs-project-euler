module Problem4 where

import Prelude

import Data.Array ((..))
import Data.Array as Array
import Data.Foldable (maximum)
import Data.Maybe (Maybe)
import Data.String.CodeUnits (fromCharArray, toCharArray)

isPalindrome :: Int -> Boolean
isPalindrome x = 
  let str = show x
  in str == (fromCharArray $ Array.reverse $ toCharArray str)

threeDigitProducts :: Array Int
threeDigitProducts = do
  x <- 999 .. 900
  y <- 999 .. 900
  pure (x * y)

ans :: Maybe Int
ans = threeDigitProducts
  # Array.filter isPalindrome
  # maximum