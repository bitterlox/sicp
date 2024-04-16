(load "/home/angel/sicp/exercises/3.23/cell.scm")

; constructors

(define (make-deque) (cons '() '()))

; selectors

(define (front-deque deque)
  (if (empty-deque? deque)
    (error "FRONT called with an empty deque" deque)
    (cell-val (front-ptr deque))))

(define (rear-deque deque)
  (if (empty-deque? deque)
    (error "FRONT called with an empty deque" deque)
    (cell-val (rear-ptr deque))))

(define (front-ptr deque) (car deque))

(define (rear-ptr deque) (cdr deque))

(define (set-front-ptr! deque item)
  (set-car! deque item))

(define (set-rear-ptr! deque item)
  (set-cdr! deque item))

; predicates

(define (empty-deque? deque)
  ; (or (null? (front-ptr deque)) (null? (rear-ptr deque)))
  (null? (front-ptr deque)))

; operations

(define (insert-front-deque! deque item)
  (cond
    ((empty-deque? deque)
     (let
       ((new-cell (make-cell '() item '())))
       (begin
         (set-front-ptr! deque new-cell)
         (set-rear-ptr! deque new-cell)))
     deque)
    (else
      (let
        ((new-cell (make-cell '() item (front-ptr deque))))
        (begin
          (set-cell-prev! (front-ptr deque) new-cell)
          (set-front-ptr! deque new-cell)))
      deque)))


(define (insert-rear-deque! deque item)
  (let
    ((new-pair (cons item '())))
    (cond
      ((empty-deque? deque)
       (let
         ((new-cell (make-cell '() item '())))
         (begin
           (set-front-ptr! deque new-cell)
           (set-rear-ptr! deque new-cell)))
       deque)
      (else
        (let
          ((new-cell (make-cell (rear-ptr deque) item '())))
          (begin
            (set-cell-next! (rear-ptr deque) new-cell)
            (set-rear-ptr! deque new-cell)))
        deque))))

(define (delete-front-deque! deque)
  (cond
    ((empty-deque? deque)
     (error "DELETE! called with an empty deque" deque))
    (else
      (let
        ((next-cell (cell-next (front-ptr deque))))
        (begin
          (set-cell-prev! next-cell '())
          (set-front-ptr! deque next-cell)))
      deque)))


(define (delete-rear-deque! deque)
  (cond
    ((empty-deque? deque)
     (error "DELETE! called with an empty deque" deque))
    (else
        (let
          ((prev-cell (cell-prev (rear-ptr deque))))
          (begin
            (set-cell-next! prev-cell '())
            (set-rear-ptr! deque prev-cell)))
        deque)))
