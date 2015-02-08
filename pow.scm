
(define (pow x n)
  (if (= 0 n)
      1
      (* x (pow x (- n 1)))))

(define (pow2 x)
  (* x  x))

(define (fstpow x n)
  (cond
    ((= n 0) 1)
    ((= (remainder n 2) 0) (pow2 (fstpow x (/ n 2))))
    (else (* x (fstpow x (- n 1))))))
