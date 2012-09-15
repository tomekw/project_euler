(ns project_euler.test.problem_1
  (:use [project_euler.problem_1])
  (:use [clojure.test]))

(deftest test-sum-of-multiplies
  (is (= 23 (sum-of-multiplies 10))))
