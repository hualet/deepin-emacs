
-- In this example, make the imported items explicit in 'import D1'
module A1 where

import D1 (sumSquares, fringe)
import C1
import B1 

main :: Tree Int ->Bool
main t = isSame (sumSquares (fringe t))
               (sumSquares (B1.myFringe t)+sumSquares (C1.myFringe t))

