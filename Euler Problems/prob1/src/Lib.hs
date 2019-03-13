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
final:: Integer -> IO ()
final x =
  if x == 0
    then do
      print 0
  else if (modoOfFive x) == 0 || (modoOfThree x) == 0
    then do
      print x
      final (decrement x)
  else do
    final (decrement x)
finalAddition :: Integer -> Integer
finalAddition x =
  if x == 0
    then do
      0
  else if (modoOfFive x) == 0 || (modoOfThree x) == 0
    then do
      x + finalAddition (decrement x)
  else do
    finalAddition (decrement x)
someFunc :: IO ()
someFunc = print (finalAddition 10000)
