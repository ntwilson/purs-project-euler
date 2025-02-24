module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Problem2 as Problem2
import Problem3 as Problem3
import Problem4 as Problem4
import Problem5 as Problem5
import Problem6 as Problem6
import Problem7 as Problem7

main :: Effect Unit
main = do
  log ("Problem 2: " <> show Problem2.ans)
  log ("Problem 3: " <> show Problem3.ans)
  log ("Problem 4: " <> show Problem4.ans)
  log ("Problem 5: " <> show Problem5.ans)
  log ("Problem 6: " <> show Problem6.ans)
  log ("Problem 7: " <> show Problem7.ans)

