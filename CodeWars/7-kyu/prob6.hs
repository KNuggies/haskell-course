-- Problem 6: https://www.codewars.com/kata/609eee71109f860006c377d1

lastSurvivor :: String -> [Int] -> Char
lastSurvivor xs [] = head xs -- xs !! 0
lastSurvivor xs (n:ns) = lastSurvivor (take n xs ++ drop (n+1) xs) ns
