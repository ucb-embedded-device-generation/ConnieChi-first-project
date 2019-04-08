module Lib
    ( someFunc
    ) where

-- message :: Bool
-- message = (\x -> True)False

array :: [Integer]
array = [1, 2, 3]

someFunc :: IO ()
someFunc = print (filter (<10) primes)

-- joinStrings :: [String] -> String
-- joinStrings []     = ""
-- joinStrings (x:xs) = x ++ joinStrings xs

-- | A list of all the prime numbers in order
primes :: [Integer]
primes = sieve [2..]

-- | ????
sieve :: [Integer] -> [Integer]
sieve (x:xs) = x : sieve (filter (\y -> y `mod` x > 0) xs)


-- lst :: [String]
-- lst = ["toilets", "are", "fabulous"]
