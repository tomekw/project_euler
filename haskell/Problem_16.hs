-- Problem 16
--
-- 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
--
-- What is the sum of the digits of the number 2^1000?

module Problem_16 where

problem_16 :: Integer
problem_16 = sumOfTheDigits 1000

sumOfTheDigits :: Integer -> Integer
sumOfTheDigits power = sum . numberToDigits $ 2 ^ power

numberToDigits :: Integer -> [Integer]
numberToDigits 0 = []
numberToDigits n = numberToDigits rest ++ [digit]
  where rest  = n `div` 10
        digit = n `mod` 10
