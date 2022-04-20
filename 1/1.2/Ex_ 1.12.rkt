#lang sicp
"Ex. 1.12"
;Recursive Pascal triangle
(define (f n)
  (if (= n 1) n
      (+ (* 2 (f 1)))))