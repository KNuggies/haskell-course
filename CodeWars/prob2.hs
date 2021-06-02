-- https://www.codewars.com/kata/57a429e253ba3381850000fb

-- Write function bmi that calculates body mass index (bmi = weight / height2).
bmi :: Float -> Float -> String  
bmi w h
    | bmi_calc <= 18.5 = "Underweight"
    | bmi_calc <= 25.0 = "Normal"
    | bmi_calc <= 30.0 = "Overweight"
    | otherwise = "Obese"
    where bmi_calc = w/h^2