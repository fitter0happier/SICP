#lang scheme

;; Exercise 1.9

(require racket/trace)

(define (inc a) (+ a 1))
(define (dec a) (- a 1))

(define (+_rec a b)
  (if (= a 0)
      b
      (inc (+_rec (dec a) b))))

(define (+_iter a b)
  (if (= a 0)
      b
      (+_iter (dec a) (inc b))))

;; Trace both functions
(trace +_rec)
(trace +_iter)

(+_rec 2 3)
;; (+_rec 2 3)
;; (inc (+_rec 1 3))
;; (inc (inc (+_rec 0 3)))
;; (inc (inc 3))
;; (inc 4)
;; 5

(+_iter 2 3)
;; (+_iter 2 3)
;; (+_iter 1 4)
;; (+_iter 0 5)
;; 5
