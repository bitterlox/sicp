(define (pascal row col) (cond
                           ((or (= col 0) (> col (+ row 1))) 0)
                           ((or (= row 0) (= row 1)) 1)
                           (else (+ 
                                   (pascal (- row 1) (- col 1))
                                   (pascal (- row 1) col)))))
