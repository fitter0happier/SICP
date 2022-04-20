#lang sicp
"Ex. 1.8"
;Use the formula for approximating cube roots to implement a cube-root procedure
(define (cube-iter guess x)
  (if (good-enough? guess x)
  guess
  (cube-iter (improve guess x) x)))

(define (square x) (* x x))

(define (cube x) (* x (square x)))

(define (improve guess x)
  (approximate guess (/ x (square guess))))

(define (approximate y z) (/ (+ z (* 2 y)) 3))

(define (good-enough? guess x)
  (< (abs(- (cube guess) x)) 0.001))

(define (cubic-root x)
  (cube-iter 1.0 x))

(cubic-root -8)