# Problem 1
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.
#
# http://projecteuler.net/problem=1

def sum_of_multiplies
  (1 .. 999).select { |e| e % 3 == 0 || e % 5 == 0 }.reduce(&:+)
end

puts sum_of_multiplies
