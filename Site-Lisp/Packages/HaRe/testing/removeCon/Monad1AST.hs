module Monad1 where
data T1 a b = C2 b a
 
f x =   do error
               "return (g (C1 x 2)) no longer defined for T1 at line: 3"
 