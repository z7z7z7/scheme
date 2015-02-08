(define (fib-iter n)
  (define (helper a b count)
    (if (= count 1)
        a
        (helper (+ a b) a (- count 1))))
  (helper 1 0 n))

;helper 1 0 7
;helper 1 1 6
;helper 2 1 5
;helper 3 2 4
;helper 5 3 3
;helper 8 5 2
;helper 13 8 1
