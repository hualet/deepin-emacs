module CaseIn1 where
main x y z
    =   case x of
	    0 -> addthree
	    1 -> inc y where inc a = a + 1
  where addthree = (x + y) + z
 