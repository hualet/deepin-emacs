module A1 where
import D1
sumSq xs ys = (sum (map sq xs)) + (sumSquares xs)
 
main = sumSq [1 .. 4]
 