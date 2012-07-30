module E4 where
data BTree a
    = Empty | T a (BTree a) (BTree a) deriving Show
 
buildtree :: (Monad m, Ord a) => [a] -> m (BTree a)
 
buildtree [] = return Empty
buildtree ((x : xs))
    =   do res1 <- buildtree xs
           res <- insert x res1
           return res
 
insert
    :: (Monad m, Ord a) => a -> (BTree a) -> m (BTree a)
 
insert val v2
    =   do case v2 of
               T val Empty Empty
                   | val == val -> return Empty
                   | otherwise ->
                       return (T val Empty (T val Empty Empty))
               T val (T val2 Empty Empty) Empty -> return Empty
               _ -> return v2
 
main :: IO ()
 
main
    =   do n@(T val a_2 Empty) <- buildtree [3, 1, 2]
           if True
             then do putStrLn $ (show (T val a_2 Empty))
             else do putStrLn $ (show (T val Empty n))
 