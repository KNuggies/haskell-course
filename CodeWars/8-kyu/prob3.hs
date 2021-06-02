-- https://www.codewars.com/kata/5f70c883e10f9e0001c89673

import Data.List ( sort , reverse)

gravityFlip :: Char -> [Int] -> [Int]
gravityFlip d xs
    | d == 'R' = sort xs
    | d == 'L' = reverse (sort xs)

-- Alternative Solution
gravityFlip' :: Char -> [Int] -> [Int]
gravityFlip' 'R' = sort
gravityFlip' 'L' = reverse . sort -- f(g(x)) = f . g x