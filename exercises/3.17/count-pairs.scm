(define (count-pairs-old x) 
   (if (not (pair? x)) 
       0 
       (+ (count-pairs-old (car x)) 
          (count-pairs-old (cdr x)) 
          1)))

(define (count-pairs x) 
  (define (is-in-seen-pairs seen-pairs pair)
    (if
      (= (length seen-pairs) 0)
      #f
      (find
            (lambda (p) (equal? p pair))
            seen-pairs)))
  (define (loop seen-pairs pairs)
    (if (or
          (not (pair? pairs))
          (is-in-seen-pairs seen-pairs pairs))
      0 
      (+ (loop (cons pairs seen-pairs) (car pairs)) 
         (loop (cons pairs seen-pairs) (cdr pairs)) 
         1)))
  (loop '() x))
