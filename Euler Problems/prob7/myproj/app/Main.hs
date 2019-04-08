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

--we only run on prime numbers b/c evens are always gonna be non prime
--we check if tail is null, this the thingamabob.
--we start looking in primeFactors with 2 (???)
primes = 2 : filter (null . tail . primeFactors) [3,5..]

primeFactors n = factor n primes
--recursive function here
  where
    -- p is current item, ps is tail of list of prime factors :3
    factor n (p:ps)
    --we know that there are no factors of n greater than the sqrt of n WOW MATH DOES THINGS so we just return n
        | p*p > n        = [n]
        -- if n divisible by p, add p to prime factor list and check n divided by p as a new prime factor
        | n `mod` p == 0 = p : factor (n `div` p) (p:ps)
        -- otherwise just set equal to another recursive call on tail of list
        | otherwise      =     factor n ps
