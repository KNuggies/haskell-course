-- https://www.codewars.com/kata/5966e33c4e686b508700002d

-- sumStr :: String -> String -> String
-- sumStr a b = show ((read a :: Int) + (read b :: Int))

sumStr :: String -> String -> String
sumStr a b = show $ readInt a + readInt b

readInt :: String -> Int
readInt "" = 0
readInt a = read a