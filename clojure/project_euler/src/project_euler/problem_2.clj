; Problem 2
;
; Each new term in the Fibonacci sequence is generated by adding
; the previous two terms. By starting with 1 and 2, the first 10 terms will be:
;
; 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
;
; By considering the terms in the Fibonacci sequence whose values do not exceed
; four million, find the sum of the even-valued terms.

(ns project_euler.problem_2)

(defn fibonacci-pair [[a b]]
  [b (+ a b)])

(defn fibonacci-sequence []
  (map first (iterate fibonacci-pair [1 1])))

(defn even-fibonacci-sum [limit]
  (reduce + (filter even? (take-while (partial > limit) (fibonacci-sequence)))))

(defn problem-2 []
  (even-fibonacci-sum 4000000))
