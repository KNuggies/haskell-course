-- Problem 10: https://www.codewars.com/kata/58f8a3a27a5c28d92e000144
-- Hint look up succ for Enum instead of changing to Num type.

firstNonConsecutive :: (Eq a,Enum a) => [a] -> Maybe a
firstNonConsecutive [] = Nothing
firstNonConsecutive [_] = Nothing
firstNonConsecutive (x:y:xs) = if succ x == y then firstNonConsecutive (y:xs) else Just y

firstNonConsecutive' :: (Eq a,Enum a) => [a] -> Maybe a
firstNonConsecutive' (x:y:zs)
  | succ x /= y = Just y 
  | otherwise = firstNonConsecutive' (y:zs)
firstNonConsecutive' _ = Nothing
