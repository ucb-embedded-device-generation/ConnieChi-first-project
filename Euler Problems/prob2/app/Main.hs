module Main where

import Lib


-- fib :: Integer -> Integer
-- fib 0 = 0
-- fib 1 = 1
-- fib x = fib(x - 1) + fib(x - 2)

--lazy fibs, dunno how this works
fib = 1 : 2 : zipWith (+) fib (tail fib)
--Difference between integer and int?
ifNotEven :: Int -> Int
ifNotEven x = x `mod` 2

evenSum :: Int -> Int
-- evenSum 0 = 0
evenSum x =
  if (fib !! x) > 10
    then 0
  else if (ifNotEven (fib !! x)) == 0
      then (fib !! x) + evenSum (x + 1)
  else
      evenSum (x + 1)

main :: IO ()
-- four million yayaya
main = print (evenSum 0)
