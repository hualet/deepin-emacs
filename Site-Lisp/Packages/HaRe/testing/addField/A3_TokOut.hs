module A3 where

data Data a = C1 String a Int Char |
              C2 Int        |
	      C3 Float

f :: Data a
f = (C1 undefined "hello" 42 'c')


g = case f of
     (C1 c1_1 x y z)  -> 42
     (C1 c1_1 x 42 z) -> 43
     _           -> 0

