-- Problem 8: https://www.codewars.com/kata/56ed20a2c4e5d69155000301

scale :: [Char] -> Int -> Int -> [Char]
scale "" _ _ = ""
scale xs k n = foldl1 (\acc xs -> acc ++ "\n" ++ xs) $ vscale n $ map (hscale k) (words xs)

vscale :: Int -> [[Char]] -> [[Char]]
vscale n xxs = concat [replicate n xs | xs <- xxs]

hscale :: Int -> [Char] -> [Char]
hscale k xs = concat [replicate k x | x <- xs]

-- alt solution
scale' :: [Char] -> Int -> Int -> [Char]
scale' [] _ _ = ""
scale' str k v = foldn vwords
    where hwords = map (hdup k) $ words str
          vwords = map (foldn . replicate v) hwords

-- Take a list of strings and fold them together with \n between
foldn :: [String] -> String 
foldn = foldl1 (\acc xs -> acc ++ "\n" ++ xs)

hdup :: Int -> String -> String 
hdup k xs = concat [replicate k x | x <- xs]
