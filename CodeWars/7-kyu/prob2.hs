-- https://www.codewars.com/kata/51f2d1cafc9c0f745c00037d
import Data.List -- for solution'

solution :: String -> String -> Bool
solution _ [] = True
solution [] _ = False
solution xs ys
    | last xs == last ys = solution (init xs) (init ys)
    | otherwise = False


-- be sure to import Data.List for this solution
solution' :: String -> String -> Bool
solution' = flip isSuffixOf

-- Old Solution
solution'' :: String -> String -> Bool
solution'' xs ys = solution''' (reverse xs) (reverse ys)

-- Check the reversed lists (part of solution'')
solution''' :: String -> String -> Bool
solution''' _ [] = True
solution''' [] _ = False
solution''' (x:xs) (y:ys) = x == y && solution''' xs ys