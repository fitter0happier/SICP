#lang scheme

;; Exercise 1.3

(define (square a) (* a a))

(define (larger-square a b c)
  (if (< a b)
      (if (< a c)
          (+ (square b) (square c))
          (+ (square a) (square b)))
      (if (< b c)
          (+ (square a) (square c))
          (+ (square a) (square b)))))

(larger-square 1 2 3)
(larger-square 1 3 2)
(larger-square 2 1 3)
(larger-square 2 3 1)
(larger-square 3 1 2)
(larger-square 3 2 1)