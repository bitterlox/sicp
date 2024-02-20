
; constructors

(define (make-mobile left right)
  (list left right))

(define (make-branch len structure)
  (list len structure))

; selectors

(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (cadr mobile))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (cadr branch))

; procedures


(define (is-mobile v)
  (and
    (pair? v)
    (pair? (left-branch v))))

(define (total-weight branch)
  (+
    (cond
      ((is-mobile (right-branch branch))
       (total-weight (right-branch branch)))
      (else (branch-structure (right-branch branch))))
    (cond
      ((is-mobile (left-branch branch))
       (total-weight (left-branch branch)))
      (else (branch-structure (left-branch branch))))))

(define (torque branch)
  (*
    (branch-length branch)
    (branch-structure branch)))

(define (balanced mobile)
  (cond
    ((and
       (is-mobile (left-branch mobile))
       (is-mobile (right-branch mobile)))
     (and
       (balanced (left-branch mobile))
       (balanced (right-branch mobile))))
    ((not (and
       (is-mobile (left-branch mobile))
       (is-mobile (right-branch mobile))))
     (=
       (torque (right-branch mobile))
       (torque (left-branch mobile))))
     (else #f))
  )

