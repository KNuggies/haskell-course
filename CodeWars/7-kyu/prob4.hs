-- Problem 4: https://www.codewars.com/kata/56e3cd1d93c3d940e50006a4

import Data.List(sortBy) -- for alternate solutions


-- hint
-- if the length is even put first item on end of right side
-- if length is odd put item on beginning of left??? side
-- it's not pretty, but this can be solved with sort and pattern matching!

-- if length == even -> bottom element on right side
-- if length == odd -> bottom elem on left side
makeValley :: [Int] -> [Int]
makeValley [] = []
makeValley xs  
    | even (length xs) = build [] [y] ys [] -- build right side
    | otherwise = build [y] [] ys [] -- build leftside
        where (y:ys) = sort' xs

--        l      r     xs     out
build :: [a] -> [a] -> [a] -> [a] -> [a]
build [] [] [] out = out
build [z] [] [] out = z:out
build [] [z] [] out = out ++ [z]
build [z] [] (x:xs) out = build [] [x] xs (z:out)
build [] [z] (x:xs) out = build [x] [] xs (out ++ [z])

-- merge sort
sort' :: Ord a => [a] -> [a]
sort' [] = []
sort' (x:xs) = sort' left ++ [x] ++ sort' right
    where left = [z | z <- xs, z <= x]
          right = [z | z <- xs, z > x]


makeValley' :: [Int] -> [Int]
makeValley' = f . sortBy (flip compare)
  where f [] = []
        f [x] = [x]
        f (x:y:xs) = x : f xs ++ [y]