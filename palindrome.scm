(define (palindrome? n)
  (define (helper i reverse-i)
    (cond
      ((or (= 0 (remainder i 10)) (< i reverse-i)) #f)
      ((or (= i reverse-i) (= (quotient i 10) reverse-i)) #t)
      (else (helper (quotient i 10)
                    (+ (* reverse-i 10) (remainder i 10))))))
  (helper n 0))
