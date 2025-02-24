module Problem2 where

import Prelude

import Data.Foldable (sum)
import Data.List.Lazy (List)
import Data.List.Lazy as List

fibonacci :: Int -> Int
fibonacci n = go n 0 1
  where
    go 0 a _ = a
    go n a b = go (n - 1) b (a + b)

fibonacciList :: List Int
fibonacciList = fibonacci <$> List.iterate (_ + 1) 0

ans :: Int
ans = fibonacciList # List.filter isEven # List.takeWhile (_ < 4_000_000) # sum 
  where
    isEven n = n `mod` 2 == 0
