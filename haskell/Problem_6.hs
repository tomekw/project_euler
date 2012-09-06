-- Problem 6
--
-- The sum of the squares of the first ten natural numbers is,
--
-- 1^2 + 2^2 + ... + 10^2 = 385
--
-- The square of the sum of the first ten natural numbers is,
--
-- (1 + 2 + ... + 10)^2 = 55^2 = 3025
--
-- Hence the difference between the sum of the squares of the first ten natural
-- numbers and the square of the sum is 3025 - 385 = 2640.
--
-- Find the difference between the sum of the squares of the first one hundred
-- natural numbers and the square of the sum.

module Problem_6 where

problem_6 :: Integer
problem_6 = abs $ sumOfTheSquares 100 - squareOfTheSum 100

sumOfTheSquares :: Integer -> Integer
sumOfTheSquares limit = sum $ squares
  where squares = map (^ 2) [1 .. limit]

squareOfTheSum :: Integer -> Integer
squareOfTheSum limit = (sum [1 .. limit]) ^ 2
