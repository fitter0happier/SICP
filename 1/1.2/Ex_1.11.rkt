#lang sicp
"Ex. 1.11"
;A function f is defined by the rule that f(n) = n, if n < 3; f(n) = f(n-1) + 2f(n-2) + 3f(n-3), n >= 3
;Write a procedure that computes f(n) by means of a recursive process.
(define (f_recursive n)
  (cond ((< n 3) n)
        (else (+ (f_recursive (- n 1))
                 (* 2 (f_recursive (- n 2)))
                 (* 3 (f_recursive (- n 3)))))))

;Write a procedure that computes f(n) by means of a iterative process.
(define (f_iterative n)
  (define (iter a b c count)
    (cond ((< n 3) n)
          ((< count 3) a)
          (else (iter (+ a (* 2 b) (* 3 c)) a b (- count 1)))))
  (iter 2 1 0 n))

(f_recursive 5)
(f_iterative 1000)