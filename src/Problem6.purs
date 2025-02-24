module Problem6 where

import Prelude

import Data.Array ((..))
import Data.Foldable (sum)

sumOfSquares :: Array Int -> Int
sumOfSquares xs = xs <#> (\x -> x * x) # sum

squareOfSum :: Array Int -> Int
squareOfSum xs = let x = xs # sum in x * x

ans :: Int
ans = squareOfSum (1 .. 100) - sumOfSquares (1 .. 100)