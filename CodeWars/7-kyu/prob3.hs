-- Problem 3: https://www.codewars.com/kata/5949481f86420f59480000e7
import Data.Bool

oddOrEven ::  Integral a => [a] -> String
oddOrEven xs 
    | odd (sum xs) = "odd"
    | otherwise = "even"

-- alternate solution
oddOrEven' :: (Foldable t, Integral a) => t a -> String
oddOrEven' = bool "odd" "even" . even . sum
