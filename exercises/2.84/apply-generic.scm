(define (super-type typeA typeB)
  (define tower '(scheme-number rational real complex))
  (define (iter result working-list)
    (cond
      ((null? working-list) result)
      ((eq? (car working-list) typeA)
       (iter typeA (cdr working-list)))
      ((eq? (car working-list) typeB)
       (iter typeB (cdr working-list)))
      (else (iter result (cdr working-list)))))
  (if
    (or (not (memq typeA tower)) (not (memq typeB tower)))
    (error "one or both types not in tower" "typeA: " typeA "typeB: " typeB "tower: " tower)
    (iter '() tower)))
