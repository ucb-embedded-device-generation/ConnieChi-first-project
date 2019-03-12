module Lib
    ( someFunc
    ) where

message :: Bool
message = (\x -> True)False
someFunc :: IO ()
someFunc = print message
