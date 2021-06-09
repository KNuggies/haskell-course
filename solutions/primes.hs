-- This file contains a list of functions that you should attempt to recreate on your own an your skills improve.
-- Be sure to attempt these on your own before looking at solutions

-- not
not' :: Bool -> Bool 
not' True = False 
not' False = True 

-- (&&)
-- (||)
-- signum

-- head
head' :: [a] -> a
head' [] = error "empty list"
head' (x:_) = x

-- tail
tail' :: [a] -> [a]
tail' [] = error "empty list"
tail' (_:xs) = xs

-- init
-- last

-- fst
fst' :: (a, b) -> a
fst' (x, _) = x

-- snd
snd' :: (a, b) -> b
snd' (_, x) = x

-- min
-- max
-- elem
-- any
-- sort
-- any
-- all
-- elems
