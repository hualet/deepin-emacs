module WithLocalDeclIn1 where

--The application of a function is replaced by the right-hand side of the definition,
--with actual parameters replacing formals.

--In this example, unfold  the first 'sq' in 'sumSquares'
--This example aims to test unfolding a  function application with multiple matches.

sumSquares x y =(case x of
                     0 -> 0
                     x -> x ^ pow where pow = 2) + sq y
 
sq 0=0
sq x=x^pow
     where pow=2