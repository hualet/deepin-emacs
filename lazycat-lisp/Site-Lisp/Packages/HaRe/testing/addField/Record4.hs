module Record4 where

data C = F {f1, f2 :: Int, f3 :: Bool    }

g = f1 (F 1 2 True)