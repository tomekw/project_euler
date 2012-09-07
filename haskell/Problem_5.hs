-- Problem 5
--
-- 2520 is the smallest number that can be divided by each of the numbers
-- from 1 to 10 without any remainder.
--
-- What is the smallest positive number that is evenly divisible
-- by all of the numbers from 1 to 20?

module Problem_5 where

problem_5 :: Integer
problem_5 = leastCommonMultiple [1 .. 20]

leastCommonMultiple :: [Integer] -> Integer
leastCommonMultiple (a:b:[]) = floor $ product / quotient
  where product  = realToFrac $ a * b
        quotient = realToFrac $ greatestCommonDivisor a b
leastCommonMultiple (a:tail) = leastCommonMultiple [a, leastCommonMultiple tail]

greatestCommonDivisor :: Integer -> Integer -> Integer
greatestCommonDivisor a 0 = a
greatestCommonDivisor a b = greatestCommonDivisor b (a `mod` b)
