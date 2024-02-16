
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

  (define (is-mobile m)
    (and
      (pair? (left-branch m))
      (pair? (right-branch m))))

(define (total-weight mobile)
  (define (branch-weight branch)
    (cond
      ((is-mobile branch)
       (total-weight branch))
      (else (branch-structure branch))))
  (+
    (branch-weight (left-branch mobile))
    (branch-weight (right-branch mobile))))

(define (balanced mobile)
  (and
    (if
      (is-mobile (left-branch mobile))
      (balanced (left-branch mobile))
      (*
        (branch-length ())
        (total-weight branch)))
    (if
      (is-mobile (right-branch mobile))
      (balanced (right-branch mobile))
      (*
        (branch-length branch)
        (total-weight branch))))
  (define (branch-balanced branch)
    (if
      (is-mobile branch)
      (balanced branch)
      (=
        (*
          (branch-length branch)
          (total-weight branch))
        (*
          (branch-length branch)
          (total-weight branch)))))
  (trace balanced)
  (trace branch-balanced)
  (trace is-mobile)
  (and
    (branch-balanced (left-branch mobile))
    (branch-balanced (right-branch mobile))))
