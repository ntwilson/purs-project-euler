module Problem3 where

import Prelude

import Data.Array as Array
import Data.Function.Uncurried (Fn2, runFn2)
import Data.List (List(..), (:))
import Data.Maybe (Maybe)

foreign import floatMod :: Fn2 Number Number Number

smallestPrimeFactor :: Number -> Number
smallestPrimeFactor n = go 2.0
  where
    go i
      | i * i > n = n
      | n `runFn2 floatMod` i == 0.0 = i
      | otherwise = go (i + 1.0)

primeFactors :: Number -> Array Number
primeFactors n = go n Nil
  where
    go 1.0 factors = Array.reverse $ Array.fromFoldable factors
    go m factors =
      let factor = smallestPrimeFactor m
      in go (m / factor) (factor : factors)
    
ans :: Maybe Number
ans = primeFactors 600851475143.0 # Array.last