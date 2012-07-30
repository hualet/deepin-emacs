
-- Refactoring: move myFringe to module D6. This refactoring test the adding of hiding
-- in the import declaration (see module B6), and the adding the import decl and the change
-- of qualifiers.

module C6(Tree(..), SameOrNot(..))  where 

data Tree a = Leaf a | Branch (Tree a) (Tree a) 

sumTree:: (Num a) => Tree a -> a
sumTree (Leaf x ) = x
sumTree (Branch left right) = sumTree left + sumTree right



class SameOrNot a where
   isSame  :: a -> a -> Bool
   isNotSame :: a -> a -> Bool

instance SameOrNot Int where
   isSame a  b = a == b
   isNotSame a b = a /= b



