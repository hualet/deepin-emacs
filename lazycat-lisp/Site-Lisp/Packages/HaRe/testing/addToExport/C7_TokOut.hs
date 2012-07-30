
-- In this example, add class instance 'isSame' to the export list.

module C7(isSame,Tree(Leaf,Branch))  where 

data Tree a = Leaf a | Branch (Tree a) (Tree a) 

sumTree:: (Num a) => Tree a -> a
sumTree (Leaf x ) = x
sumTree (Branch left right) = sumTree left + sumTree right

myFringe:: Tree a -> [a]
myFringe (Leaf x ) = [x]
myFringe (Branch left right) = myFringe left 

class SameOrNot a where
   isSame  :: a -> a -> Bool
   isNotSame :: a -> a -> Bool

instance SameOrNot Int where
   isSame a  b = a == b
   isNotSame a b = a /= b



