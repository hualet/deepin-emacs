module D1 where
data BTree a
    = Empty | T a (BTree a) (BTree a) deriving Show
 
buildtree :: Ord a => [a] -> BTree a
 
buildtree [] = Empty
buildtree ((x : xs)) = insert x (buildtree xs)
 
insert :: Ord a => a -> (BTree a) -> BTree a
 
insert val v2
    = let f (new@(T val Empty Empty)) = new in f v2
 
newPat_1 = Empty
 
f :: String -> String
 
f newPat_2@((x : xs)) = newPat_2
 
main :: BTree Int
 
main = buildtree [3, 1, 2]
 