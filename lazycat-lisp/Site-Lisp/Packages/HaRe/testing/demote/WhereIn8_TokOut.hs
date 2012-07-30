module WhereIn8 where

--A definition can be demoted to the local 'where' binding of a friend declaration,
--if it is only used by this friend declaration.

--Demoting a definition narrows down the scope of the definition.
--In this example, demote 'anotherFun' will fail.

sumSquares x y = sq x + sq y       

sq,anotherFun :: Int -> Int
sq 0 = 0
sq z = z^pow 
   where  pow=2

anotherFun x = x^2
 
