module Main where

import Text.ParserCombinators.Parsec --hiding (spaces)
import Lib

main :: IO ()
main = someFunc

symbol :: ParserChar
symbol = oneOf "!$%&|*+-/:<=?>@^_~#"
