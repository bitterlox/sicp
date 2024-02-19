
; constructors

(define (make-mobile left right)
  (list left right))

(define (make-branch len structure)
  (list len structure))

; selectors

(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (car (cdr mobile)))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (if
    (and
      (pair? (cdr branch))
      (null? (cddr branch)))
    (car (cdr branch))
    (cdr branch)))

; procedures


(define (is-submobile branch)
  (if (pair? branch) (pair? (cadr branch)) #f))

(define (total-weight branch)
  (+
    (cond
      ((is-submobile (right-branch branch))
       (total-weight (right-branch branch)))
      (else (branch-structure (right-branch branch))))
    (cond
      ((is-submobile (left-branch branch))
       (total-weight (left-branch branch)))
      (else (branch-structure (left-branch branch))))))

(define (balanced mobile)
  (define (balanced-rec arg)
    (cond
      ((null? arg) #f)
      ((number? arg) arg)
      ((pair? arg)
       (let
         ((left (balanced-rec )))
         ()))
      ))
  )

