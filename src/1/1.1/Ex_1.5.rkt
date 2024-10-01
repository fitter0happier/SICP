#lang scheme

;; Exercise 1.5

(define (p) (p))

(define (test x y)
(if (= x 0) 0 y))

;; Applicative-order evaluation - outputs 0
;; Normal-order evaluation - infinite loop(Scheme case)

;; (test 0 (p))