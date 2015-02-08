
(define (add a b)
  (+ a b))

(define (add3 a)
  (define three 3)
  (+ a three))

(define (my-even? a)
  (= (remainder a 2) 0))

(define (my-odd? a)
  (if (= (remainder a 2) 1)
      (begin
        (display "ODD"))
      (begin
        (display "EVEN")
        (newline)
        #f)))

(define (signum n)
  (cond 
    ((> n 0) '+)
    ((< n 0) '-)
    (else 0)))
    
    (define (pow x n)
  (if (= 0 n)
      1
      (* x (pow x (- n 1)))))
