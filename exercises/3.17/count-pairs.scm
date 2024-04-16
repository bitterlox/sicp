(define (count-pairs x) 
  (let
    ((seen-pairs '()))
    (begin
      (define (is-in-seen-pairs pair)
        (if
          (= (length seen-pairs) 0)
          #f
          (find
            (lambda (p) (eq? p pair))
            seen-pairs)))
      (define (loop pairs)
        (cond
          ((or
             (not (pair? pairs))
             (is-in-seen-pairs pairs))
           0)
          (else
            (set! seen-pairs (cons pairs seen-pairs))
            (+
              (loop (car pairs))
              (loop (cdr pairs))
              1)))))
    (loop x)))
