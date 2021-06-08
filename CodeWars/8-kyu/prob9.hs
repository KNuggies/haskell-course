-- Problem 9: https://www.codewars.com/kata/57a083a57cb1f31db7000028

powersOfTwo :: Int -> [Int]
powersOfTwo n = map (2^) [0..n]

powersOfTwo' :: Int -> [Int]
powersOfTwo' n = [2^i | i <- [0..n]]

powersOfTwo'' :: Int -> [Int]
powersOfTwo'' 0 = [1]
powersOfTwo'' n = powersOfTwo (n-1) ++ [2^n]