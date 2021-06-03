-- https://www.codewars.com/kata/57a0e5c372292dd76d000d7e

repeatStr :: Int -> String -> String
repeatStr n str = concat [str | _ <- [1..n]]

repeatStr' :: Int -> String -> String
repeatStr' n str = concat (take n (repeat str))

repeatStr'' :: Int -> String -> String
repeatStr'' n = concat . replicate n
