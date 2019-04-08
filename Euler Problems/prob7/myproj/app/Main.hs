module Main where

import Lib



main :: IO ()
main = print (primes !! 10001)

primes :: [Integer]
-- primes = sieve [2..]
-- primes = [x | y <- [2..], let x = y, divisible y x == True]

-- sieve :: [Integer] -> [Integer]
-- sieve (p:xs) = p:sieve [x | x <-xs ,x `mod` p > 0]

-- divisible:: [Integer] -> [Integer] -> Bool
-- divisible = True

primes = 2 : filter (null . tail . primeFactors) [3,5..]

primeFactors n = factor n primes
--recursive function here
  where
    factor n (p:ps)
        | p*p > n        = [n]
        | n `mod` p == 0 = p : factor (n `div` p) (p:ps)
        | otherwise      =     factor n ps
