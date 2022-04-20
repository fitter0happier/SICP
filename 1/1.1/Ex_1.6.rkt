#lang sicp
"Ex. 1.6"
;Alyssa P. Hacker doesn't see why if needs to be provided as a special form.
;"Why can't I just define it as an ordinary procedure in terms of cond?"
;She defines a new version of if:
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (square x) (* x x))

;and uses it to rewrite square root program:
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x) guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;What happens whe she tries to compute square roots?
(sqrt 9)

;Because of the applicative-order nature of the new-if procedure, it will always try to evaluate both arguments passed to it before applying the procedure to it. In our case
;it will lead to new-if always trying to evaluate third parameter, which is the recursive call of the sqrt-iter function, resulting in infinite recursion and memory overrun.
;Normal if-conditional in that case would first evalutate the predicate and then the corresponding consequent if the flag is #t or alternative if #false. So it doesn't call sqrt-iter again unless
;the guess is not precise enough
