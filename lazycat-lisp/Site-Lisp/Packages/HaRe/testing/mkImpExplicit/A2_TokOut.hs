
-- In this example, make the used entities explicit in 'import C1'.
module A2 where

import D1
import C1 (Tree, isSame, myFringe)
import B1 

main :: Tree Int ->Bool
main t = isSame (sumSquares (fringe t))
               (sumSquares (B1.myFringe t)+sumSquares (C1.myFringe t))

