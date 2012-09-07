-- Problem 20
--
-- n! means n * (n - 1) * ... * 3 * 2 * 1
--
-- For example, 10! = 10 * 9 * ... * 3 * 2 * 1 = 3628800,
-- and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
--
-- Find the sum of the digits in the number 100!

module Problem_20 where

import Problem_16 (numberToDigits)

problem_20 :: Integer
problem_20 = sumOfTheDigits 100

sumOfTheDigits :: Integer -> Integer
sumOfTheDigits limit = sum $ numberToDigits $ product [1 .. limit]
