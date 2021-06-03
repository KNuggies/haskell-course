-- https://www.codewars.com/kata/57a0885cbb9944e24c00008e

removeExclamationMarks :: String -> String
removeExclamationMarks str = [c | c <- str, c /= '!']

-- Alternate Solution
removeExclamationMarks' :: String -> String
removeExclamationMarks' = filter (/='!')