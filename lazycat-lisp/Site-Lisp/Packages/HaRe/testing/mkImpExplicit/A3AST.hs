module A3 where
import Prelude (Int, Bool, (+))
import Prelude
import D1
import C1
import B1
main :: (Tree Int) -> Bool
 
main t
    =   isSame (sumSquares (fringe t))
            ((sumSquares (B1.myFringe t)) +
                 (sumSquares (C1.myFringe t)))
 