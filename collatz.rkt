;; (collatz n) based on Collatz' Conjecture, will return a list of numbers produced by the procedure until it reaches the 4-2-1 loop
;; Examples:
(check-expect (collatz 4) (list 4 2 1))
(check-expect (collatz 13) (list 13 40 20 10 5 16 8 4 2 1))
;; collatz: Nat -> (listof Nat)
(define (collatz n)
  (cond
    [(= n 0) (cons 0 empty)]
    [(= n 1) (cons 1 empty)]
    [(= (modulo n 2) 0) (cons n (collatz (/ n 2)))]
    [(= (modulo n 2) 1) (cons n (collatz (+ 1 (* n 3))))])
  )
