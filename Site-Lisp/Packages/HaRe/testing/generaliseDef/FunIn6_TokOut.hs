module FunIn6 where

--This example generalise 'h+t' in pattern binding 'foo'. 
--This example aims to test generalising a constant binding into a function definition.

main :: Int
main = foo (h + t) + 17

foo ht = ht + (snd tup)

tup@(h,t) = head $ zip [1..10] [3..15]


