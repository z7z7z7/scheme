(define (mreverse n)
  (define (helper i result)
    (if (<= i 0)
        result
        (helper (quotient i 10) 
                (+ (* result 10)
                   (remainder i 10)))))
  (helper n 0))
