(define (add x y)
  (+ x y))

(define (double-sum a b)
  (add (add a b) (add a b)))

; Referentially transparent: (add 3 4) can be replaced with 7
(display (double-sum 3 4)) ; 14
(newline)