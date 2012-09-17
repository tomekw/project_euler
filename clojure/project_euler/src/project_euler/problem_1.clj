; Problem 1
;
; If we list all the natural numbers below 10 that are multiples of 3 or 5,
; we get 3, 5, 6 and 9. The sum of these multiples is 23.
;
; Find the sum of all the multiples of 3 or 5 below 1000.

(ns project_euler.problem_1)

(defn mod-x [x]
  (fn [n] (= (mod n x) 0)))

(def mod3 (mod-x 3))

(def mod5 (mod-x 5))

(defn sum-of-multiplies [limit]
  (apply + (filter #(or (mod3 %) (mod5 %)) (range 1 limit))))

(defn problem-1 []
  (sum-of-multiplies 1000))
