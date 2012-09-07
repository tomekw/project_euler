-- Problem 1
--
-- If we list all the natural numbers below 10 that are multiples of 3 or 5,
-- we get 3, 5, 6 and 9. The sum of these multiples is 23.
--
-- Find the sum of all the multiples of 3 or 5 below 1000.

module Problem_1 where

problem_1 :: Integer
problem_1 = sumOfMultiplies 999

sumOfMultiplies :: Integer -> Integer
sumOfMultiplies limit = sum $ filter multiplies [1 .. limit]
  where multiplies x = x `mod` 3 == 0 || x `mod` 5 == 0
