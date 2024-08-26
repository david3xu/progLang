; Define a higher-order function that applies a function twice 
(define (apply-twice f x)
  (f (f x)))

; Use apply-twice with a lambda function 
(display (apply-twice (lambda (x) (* x x)) 5)) ; 625
(newline) 

; Use lambda in a list operation 
(define numbers '(1 2 3 4 5))
(display (map (lambda (x) (* x x)) numbers)) ; (1 4 9 16 25)
(newline)

; Create a closure using lambda 
(define (make-adder n)
  (lambda (x) (+ x n))) 

; Use the closure                   
(define add5 (make-adder 5))
(display (add5 10)) ; 15
(newline)