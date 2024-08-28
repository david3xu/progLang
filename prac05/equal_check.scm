; Function equality in Scheme is typically based on reference equality, not structural equality. This means two functions are considered equal if they refer to the exact same function object in memory.
; Lambda expressions that look identical are not necessarily equal, as each evaluation of a lambda expression creates a new function object.
; Functions defined with define at the top level can be compared for equality.

; Two named functions defined at the top level
(define (add1 x) (+ x 1))
(define (inc y) (+ y 1))

; These are not equal, even though they do the same thing
(display (eq? add1 inc))  ; => #f

; A function can be equal to itself
(display (eq? add1 add1) ) ; => #t

; Lambda expressions are not equal, even if identical
(display (eq? (lambda (x) (+ x 1)) 
     (lambda (x) (+ x 1))))  ; => #f

; But you can assign a lambda to a variable and compare that
(define f (lambda (x) (+ x 1)))
(define g f)
(display (eq? f g))  ; => #t
(display (f 5))  ; => 6
(newline)
display (g 5)  ; => 6