#lang sicp
"Ex. 1.3"
;Define a procedure that takes three numbers as arguments and returns the sum of the squares
;of the two larger numbers
(define (square x) (* x x))
(define (sum x y z) (cond ((and (>= x z) (>= y z)) (+ (square x) (square y)))
                          ((and (>= x y) (>= z y)) (+ (square x) (square z)))
                          (else (+ (square y) (square z)))))
(sum 1 2 2)
(newline)

"Ex. 1.4"
;Describe the behavior of the following procedure:
(define (a-plus-abs-b a b)
  ((if (> b 0) + -)a b))
(a-plus-abs-b 5 -4)
;This procedure accepts two arguments as parameters. It then checks if the second argument is
;a number > 0. If yes, it returns a sum of first and second parameter, if no,
;it substracts the second parameter from the first.
(newline)

"Ex. 1.5"
;Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using
;applicative-order evaluation or normal-order evaluation. He defines the following two procedures:
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))
;Then he evaluates the expression
(test 0 (p))
;What behavior will Ben observe with an interpreter that uses:
;1)applicative-order evaluation?
;2)normal-order evaluation?

;1)(Lisp case) The interpreter will try to evaluate every operand before applying the test procedure to the resulted
;arguments. Since procedure (p) calls itself, it will result in a loop. We will not see the result of evaluation;
;2) The interpreter will not try to evaluate the operands until they are needed. In this case, it won't happen
;until if-conditional. It will then evaluate the operand x, and since the argument is 0, the procedure returns 0
;without the need to evaluate second operand.




