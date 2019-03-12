module Lib
    ( someFunc
    ) where

multOfFiveOrThree :: Integer -> Integer
multOfFiveOrThree x = x + 1
modo :: Integer
modo = 3 `mod` 2
someFunc :: IO ()
someFunc = print modo
