; 1. Assigning a function to a variable: why use lambda? 
;  anonymous functions: lambda, is defined without a name 
;  This example demonstrates how functions are first-class values in Scheme.
;  We're creating a function using lambda and then binding it to the name square. This is equivalent to defining a function directly, but it explicitly shows that functions are values that can be assigned to variables, just like numbers or strings.

(define square
  (lambda (x) (* x x)))  ; square is a function that squares its argument

; (define (square x) (* x x)) ; equivalent to the above

; 2. Passing a function as an argument to another function
(define (apply-twice f x)
  (f (f x)))


  ; 3. Returning a function from a function
  (define (make-multiply-by n)
    (lambda (x) (* x n)))

  ; 4. String functions in a list
  (define function-list 
    (list square (lambda (x) (* x 2)) (make-multiply-by 3)))

  ; using the functions 
  (display (square 5)) ; 25
  (newline)

  ; Passing squre function to apply-twice
  (display (apply-twice square 5)) ; 625
  (newline) 

  ; Creating and using a function returned by make-multiply-by
  (define triple (make-multiply-by 3))
  (display (triple 5)) ; 15
  (newline)

  ; Using the functions in the list
  (display ((car function-list) 5)) ; 25: 5 * 5, car means: first element of the list
  (newline)

  (display ((cadr function-list) 5)) ; 10: 5 * 2, cadr means: second element of the list
  (newline)

  (display ((caddr function-list) 5)) ; 15
  (newline)