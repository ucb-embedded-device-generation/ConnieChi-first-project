module Lib
    ( someFunc
    ) where

-- multOfFiveOrThree :: Integer -> Integer
-- multOfFiveOrThree x = x + 1
modoOfFive :: Integer -> Integer
modoOfFive x = x `mod` 5
modoOfThree :: Integer -> Integer
modoOfThree x = x `mod` 3
decrement:: Integer -> Integer
decrement x = x - 1
-- someFunc :: Integer -> IO()
-- someFunc x = print x
final:: Integer -> Integer
final x = if (modoOfFive x) == 0 && (modoOfThree x) == 0
    then print x
    else print 1
