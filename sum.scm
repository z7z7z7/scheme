(define (sum start end)
  (if (>= start end) 
      end
      (+ start (sum (+ start 1) end))))
