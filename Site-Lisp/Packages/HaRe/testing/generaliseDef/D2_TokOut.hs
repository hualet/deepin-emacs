module D2 where

{- generalise function 'f' on the sub-expression '(y+1)' with 
   a new parameter 'z'. This refactoring only affects the current module
-}

y=0

f z x =x + z

f_gen = (y + 1)

sumFun xs = sum $ map (f (y + 1)) xs  