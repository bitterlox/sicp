

; constructors

(define (make-leaf symbol weight) (list 'leaf symbol weight))

; predicates

(define (leaf? object) (eq? (car object) 'leaf))

; selectors

(define (symbol-leaf x) (cadr x))

(define (weight-leaf x) (caddr x))

(define (left-branch tree) (car tree))

(define (right-branch tree) (cadr tree))

(define (symbols tree)
  (if
    (leaf? tree)
    (list (symbol-leaf tree))
    (caddr tree)))

(define (weight tree)
  (if
    (leaf? tree)
    (weight-leaf tree)
    (cadddr tree)))


; procedures

(define (decode bits tree)
  (define (decode-1 bits current-branch)
    (if
      (null? bits)
      '()
      (let
        ((next-branch (choose-branch (car bits) current-branch)))
        (if
          (leaf? next-branch)
          (cons
            (symbol-leaf next-branch)
            (decode-1 (cdr bits) tree))
          (decode-1 (cdr bits) next-branch)))))
  (decode-1 bits tree))

(define (choose-branch bit branch)
  (cond
    ((= bit 0) (left-branch branch))
    ((= bit 1) (right-branch branch))
    (else (error "bad bit: CHOOSE-BRANCH" bit))))
