(define (fact n)
  (if (<= n 1)
      1
      (* n (fact (- n 1)))))
      
(define (fact-iter n)
  (define (helper i acc)
    (if (= i 1)
        acc
        (helper (- i 1) (* acc i))))
  (helper n 1))
