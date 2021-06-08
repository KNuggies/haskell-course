-- https://www.codewars.com/kata/5863f97fb3a675d9a700003f

data Player = Player { team :: String, ppg :: Double } deriving (Show)

sumPpg :: Player -> Player -> Double
sumPpg player1 player2 = ppg player1 + ppg player2


sumPpg' :: Player -> Player -> Double
sumPpg' (Player _ ppg1) (Player _ ppg2) = ppg1 + ppg2