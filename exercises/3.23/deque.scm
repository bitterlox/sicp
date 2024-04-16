

; constructors

(define (make-deque) (cons '() '()))

; selectors

(define (front-deque deque)
  (if (empty-deque? deque)
    (error "FRONT called with an empty deque" deque)
    (car (front-ptr deque))))

(define (front-ptr deque) (car deque))

(define (rear-ptr deque) (cdr deque))

(define (set-front-ptr! deque item)
  (set-car! deque item))

(define (set-rear-ptr! deque item)
  (set-cdr! deque item))

; predicates

(define (empty-deque? deque)
  (null? (front-ptr deque)))

; operations

(define (insert-front-deque! deque item)
  (let
    ((new-pair (cons item '())))
    (cond
      ((empty-deque? deque)
       (set-front-ptr! deque (cons item '()))
       (set-rear-ptr! deque (cons item '()))
       deque)
      (else
        (set-front-ptr! deque (cons item (front-ptr deque)))
         deque))))


(define (insert-rear-deque! deque item)
  (let
    ((new-pair (cons item '())))
    (cond
      ((empty-deque? deque)
       (set-front-ptr! deque new-pair)
       (set-rear-ptr! deque new-pair) deque)
      (else
        (set-cdr! (rear-ptr deque) new-pair)
        (set-rear-ptr! deque new-pair) deque))))

(define (delete-front-deque! deque)
  (cond
    ((empty-deque? deque)
     (error "DELETE! called with an empty deque" deque))
    (else
      (set-front-ptr! deque (cdr (front-ptr deque)))
      deque)))


(define (delete-rear-deque! deque)
  (cond
    ((empty-deque? deque)
     (error "DELETE! called with an empty deque" deque))
    (else
      (set-front-ptr! deque (cdr (front-ptr deque)))
      deque)))
