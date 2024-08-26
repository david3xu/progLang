; 1. function to compute the area of a circle
(define (area-of-circle r)
  ; Multiply pi (approximated as 3.14159) by the square of the radius
  (* 3.14159 (* r r)))

; 2. function to delete the last element of a list
(define (del-last lst)
  ; Check if the list has only one element
  (if (null? (cdr lst))
      ; Base case: return an empty list if there's only one element
      '()
      ; Recursive case: construct a new list without the last element
      (cons (car lst) (del-last (cdr lst)))))

; 3. function to reverse a provided list
(define (reverse-list lst)
  ; Check if the list is empty
  (if (null? lst)
      ; Base case: return an empty list if the input list is empty
      '()
      ; Recursive case: append the first element to the reversed rest of the list
      (append (reverse-list (cdr lst)) (list (car lst)))))

; 4. function to insert an element right of another list
(define (insert-right-of new-elem target-elem lst)
  (cond 
    ; Base case: if the list is empty, return an empty list
    ((null? lst) '())
    ; If the first element of the list is the target element
    ((eq? (car lst) target-elem) 
      ; Insert the new element right after the target element
      (cons (car lst) (cons new-elem (cdr lst))))
    ; Recursive case: continue traversing the list
    (else 
      ; Construct a new list with the first element and the result of the recursive call
      (cons (car lst) (insert-right-of new-elem target-elem (cdr lst))))))


; test the code 
(display "\nTesting area-of-circle\n")
(display (area-of-circle 5)) ; 78.53975
(newline)

(display "\nTesting del-last\n")
(display (del-last '(1 2 3 4 5))) ; (1 2 3 4)
(newline)

(display "\nTesting reverse-list\n")
(display (reverse-list '(1 2 3 4 5))) ; (5 4 3 2 1)

(display "\nTesting insert-right-of\n")
; (insert-right-of 'not 'does '(my dog does have fleas))
(display (insert-right-of 'not 'does '(my dog does have fleas))) ; (my dog does not have fleas)


