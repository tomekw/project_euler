(ns project_euler.test.problem_2
  (:use [project_euler.problem_2])
  (:use [clojure.test]))

(deftest test-sum-of-multiplies
  (is (= 10 (even-fibonacci-sum 10))))
