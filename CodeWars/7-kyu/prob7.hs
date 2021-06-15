-- Problem 7: https://www.codewars.com/kata/60bcef3c4a3ef30015bc05dd

result :: [[Int]] -> Int
result nns = product (map sum nns)

result' :: [[Int]] -> Int
result' = product . map sum

result'' :: [[Int]] -> Int
result'' = foldl (\acc b -> acc * sum b) 1