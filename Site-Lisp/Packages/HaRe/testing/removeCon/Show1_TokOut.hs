module Show1 (g) where

data T1 = C2 Int Int


{- f :: T1 -> Int -}
{- f (C1 x y) = x + y -}

g = error
        "show (f (C1 1 2)) no longer defined for T1 at line: 3"



