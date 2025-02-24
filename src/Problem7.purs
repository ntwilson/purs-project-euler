module Problem7 where

import Prelude

isPrime :: Int -> Boolean
isPrime n = n > 1 && go 2
  where
    go x
      | x * x > n = true
      | n `mod` x == 0 = false
      | otherwise = go (x + 1)

nthPrime :: Int -> Int
nthPrime n = go 2 1
  where
    go primeCandidate i
      | isPrime primeCandidate && i == n = primeCandidate
      | isPrime primeCandidate = go (primeCandidate + 1) (i + 1)
      | otherwise = go (primeCandidate + 1) i

ans :: Int
ans = nthPrime 10_001