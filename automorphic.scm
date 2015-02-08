; In mathematics an automorphic number (sometimes referred to as a circular number) 
; is a number whose square "ends" in the same digits as the number itself. 

(define (automorphic? n)
  ( = n
      (remainder (expt n 2)
                 (expt 10 ( count-digits-iter n)))))

(define (count-digits-iter n)
  (define (helper i result)
    (if (<= i 0)
        result
        (helper (quotient i 10) (+ result 1))))
  (helper n 0))
