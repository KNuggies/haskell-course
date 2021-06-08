-- Problem 8: https://www.codewars.com/kata/5772da22b89313a4d50012f7

greet :: String -> String -> String
-- greet name owner = if name == owner then "Hello boss" else "Hello guest"
greet name owner 
    | name == owner = "Hello boss"
    | otherwise = "Hello guest"
