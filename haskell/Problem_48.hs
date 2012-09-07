-- Problem 48
--
-- The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.
--
-- Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.

module Problem_48 where

problem_48 = lastTenDigits 1000

lastTenDigits :: Integer -> Integer
lastTenDigits limit = read $ reverse $ take 10 $ reverse $ show number
  where number = sum $ map power [1 .. limit]
        power p = p ^ p
