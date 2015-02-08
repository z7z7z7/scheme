(define (count-digits n)
  (if (<= n 0)
      0
      (+ 1 (count-digits (quotient n 10)))))

(define (sum-digits n)
  (if (<= n 0)
      0
      (+ (remainder n 10) (sum-digits (quotient n 10)))))

(define (count-digits-iter n)
  (define (helper i result)
    (if (<= i 0)
        result
        (helper (quotient i 10) (+ result 1))))
  (helper n 0))

(define (sum-digits-iter n)
  (define (helper i result)
    (if (<= i 0) 
        result
        (helper (quotient i 10) (+ result (remainder i 10)))))
  (helper n 0))
