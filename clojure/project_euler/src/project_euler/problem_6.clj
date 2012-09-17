; Problem 6
;
; The sum of the squares of the first ten natural numbers is,
;
; 1^2 + 2^2 + ... + 10^2 = 385
;
; The square of the sum of the first ten natural numbers is,
;
; (1 + 2 + ... + 10)^2 = 55^2 = 3025
;
; Hence the difference between the sum of the squares of the first ten natural
; numbers and the square of the sum is 3025 - 385 = 2640.
;
; Find the difference between the sum of the squares of the first one hundred
; natural numbers and the square of the sum.

(ns project_euler.problem_6
  (:require [clojure.math.numeric-tower :as math]))

(defn sum-of-the-squares [limit]
  (reduce + (map #(math/expt % 2) (range 1 (inc limit)))))

(defn square-of-the-sum [limit]
  (math/expt (reduce + (range 1 (inc limit))) 2))

(defn difference [limit]
  (math/abs (- (sum-of-the-squares limit) (square-of-the-sum limit))))

(defn problem-6 []
  (difference 100))
