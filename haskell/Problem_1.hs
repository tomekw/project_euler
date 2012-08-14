-- Problem 1
--
-- If we list all the natural numbers below 10 that are multiples of 3 or 5,
-- we get 3, 5, 6 and 9. The sum of these multiples is 23.
--
-- Find the sum of all the multiples of 3 or 5 below 1000.
--
-- http://projecteuler.net/problem=1

module Problem_1 where

sumOfMultiplies :: Integer
sumOfMultiplies = sum $ filter multiplies [1 .. 999]
  where multiplies x = x `mod` 3 == 0 || x `mod` 5 == 0
