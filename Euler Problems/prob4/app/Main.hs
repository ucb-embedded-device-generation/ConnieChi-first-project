module Main where

import Lib
--all three digit numbers
threes :: [Int]
threes = [x | y<-[100..999], z<-[100..999], let x = z * y, show x == reverse(show x)]
--convert integer to list to reverse
digs :: Integral x => x -> [x]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]

--need to add Eq because x can't be any type apparently?, == is type Eq
-- isPalindrome :: Eq x => [x] -> Bool
-- isPalindrome :: Eq x => Bool
-- isPalindrome x = (reverse x == x)

isPalindrome :: Integer -> Bool
isPalindrome n = show n == reverse (show n)


--want to have max of everything?
main :: IO ()
-- main = print (isPalindrome (digs 9008))
-- main = print(foldr (max) 0 threes)
main = print(foldr (max) 0 threes)
-- main = print (filter isPalindrome threes)
