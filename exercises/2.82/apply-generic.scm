(define (all-true l) (fold-right (lambda (a b) (and a b)) true l))

(define (all-values-eq? val-list)
  (all-true (map (lambda (curr-val) (eq? curr-val (car val-list))) val-list)))

(define (apply-generic op . args)
  (let
    ((type-tags (map type-tag args)))
    (let ((proc (get op type-tags)))
      (if 
        proc
        (apply proc (map contents args))
        (let
          ((all-types-same (all-values-eq? type-tags))
           (type1 (car type-tags))
           (type2 (cadr type-tags))
           (a1 (car args))
           (a2 (cadr args)))
          (if
            all-types-same
            (error "no procedure for these types")
            (let
              ((proc ))
              ()))) 
        (error "No method for these types" (list op type-tags)))))))
