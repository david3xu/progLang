(define (make-adder x)
  (lambda (y) (+ x y)))

; (display (lambda (y) (+ 5 y)))

; (display (make-adder 5))

(define add5 (make-adder 5))

; (display (add5 3))

; (display ((lambda (y) (+ 5 y)) 3))