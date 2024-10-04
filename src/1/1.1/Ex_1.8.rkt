#lang scheme

;; Exercise 1.8

(define (square a) (* a a))

(define (make-better guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))

(define (cube x)
  (* x x x))

(define (good-enough-cubic? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (cubic-iter guess x)
  (if (good-enough-cubic? guess x)
          guess
          (cubic-iter (make-better guess x) x)))

(define (cubic-root x) (cubic-iter 1.0 x))

(cubic-root 64)
