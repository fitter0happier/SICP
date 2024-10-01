#lang scheme

;; Exercise 1.6

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (square a) (* a a))

(define (average x y) (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(define (sqrt x) (sqrt-iter 1.0 x))

;; (sqrt 9)

;; Becase of the normal-order evaluation, each call of new-if will try to evaluate
;; all the operands, which in turn will result in deeper recursion, leading to
;; stack overflow