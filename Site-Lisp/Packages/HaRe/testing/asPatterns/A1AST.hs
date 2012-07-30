module ConstructorIn1 where
data BTree a
    = Empty | T a (BTree a) (BTree a) deriving Show
 
buildtree :: Ord a => [a] -> BTree a
 
buildtree [] = Empty
buildtree ((x : xs)) = insert x (buildtree xs)
 
insert :: Ord a => a -> (BTree a) -> BTree a
 
insert val Empty = T val Empty Empty
insert val (T tval left right)
    | val > tval = T tval left (insert val right)
    | otherwise = T tval (insert val left) right
 
main :: BTree Int
 
main = buildtree [3, 1, 2]
 