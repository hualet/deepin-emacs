module Recursive9 where

f1 :: Int -> [Char] -> [Char]
f1 _ "" = ""
f1 0 xs = ""
f1 n (x:xs) = (x:ls) 
            where
              ls = f1 (n - 1) xs

f2 :: Int -> String -> String
f2 _ "" = ""
f2 0 xs = xs
f2 n (x:xs) = ls
               where
                ls = f2 (n - 1) xs

