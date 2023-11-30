  (define (f n) 
    (define (f-iter current-n a b c) (if
                                       (not (> current-n n))
                                       (f-iter
                                         (+ current-n 1)
                                         (+ a (* 2 b) (* 3 c))
                                         a
                                         b)
                                       a))
    (if 
      (< n 3)
      n
      (f-iter 3 2 1 0)))
