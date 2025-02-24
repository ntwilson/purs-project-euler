module Problem5 where

import Prelude

import Data.Array ((..))
import Data.Array as Array
import Data.Maybe (Maybe(..))

isDivisibleBy :: Int -> Int -> Boolean
isDivisibleBy x y = x `mod` y == 0

isDivisibleByAll :: Array Int -> Int -> Boolean
isDivisibleByAll xs x = Array.all (x `isDivisibleBy` _) xs

ans :: Maybe Int
ans = go 20 
  where
    go n 
      | isDivisibleByAll (1 .. 20) n = Just n
      | otherwise = go (n + 20)
