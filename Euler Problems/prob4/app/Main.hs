module Main where

import Lib

--convert integer to list to reverse
digs :: Integral x => x -> [x]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]

--need to add Eq because x can't be any type apparently?, == is type Eq
isPalindrome :: Eq x => [x] -> Bool
isPalindrome x = (reverse x == x)



main :: IO ()
main = print (isPalindrome (digs 9008))
