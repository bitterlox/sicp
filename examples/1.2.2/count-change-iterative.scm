(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
      ((= kinds-of-coins 2) 5)
      ((= kinds-of-coins 3) 10)
      ((= kinds-of-coins 4) 25)
      ((= kinds-of-coins 5) 50)))

(define (cc amt koc) (cond
                       ((= amt 0) 1)
                       ((or (< amt 0) (= koc 0)) 0)
                       (else (+ 
                         (cc 
                           amt 
                           (- koc 1))
                         (cc 
                           (- 
                             amt 
                             (first-denomination koc))
                           koc)))))

(define (count-change amt) (cc amt 5))
