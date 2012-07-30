module D1 where

{-demote 'sq' to 'sumSquares'. This refactoring
  affects module 'D1' and 'C1' -}

sumSquares (x:xs) = sq x + sumSquares xs
  where
    sq x = x ^pow 
sumSquares [] = 0


pow = 2

main = sumSquares [1..4]

