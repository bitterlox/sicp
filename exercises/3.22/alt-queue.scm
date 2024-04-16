
; constructors

(define (make-queue)
  (let ((front-ptr '())
        (rear-ptr '()))
    (define (empty-queue?)
      (null? front-ptr))

    (define (front-queue)
      (if (empty-queue?)
        (error "FRONT called with an empty queue")
        (car front-ptr)))

    (define (dispatch m)
      (cond
        ((eq? m 'empty-queue?) empty-queue?) ; returns procedure
        ((eq? m 'front-queue) front-queue) ; returns procedure
        ((eq? m 'front-ptr) front-ptr) ; returns value
        ((eq? m 'rear-ptr) rear-ptr) ; returns value
        ((eq? m 'set-front-ptr) (lambda (item) (set! front-ptr item)))
        ((eq? m 'set-rear-ptr) (lambda (item) (set! rear-ptr item)))
        ((eq? m 'foo))
        ))
    dispatch))

; predicates

(define (empty-queue? queue)
  ((queue 'empty-queue?)))

; selectors

(define (front-queue queue)
  ((queue 'front-queue)))

(define (front-ptr queue) (queue 'front-ptr))

(define (rear-ptr queue) (queue 'rear-ptr))

(define (set-front-ptr! queue item)
  ((queue 'set-front-ptr) item))

(define (set-rear-ptr! queue item)
  ((queue 'set-rear-ptr) item))


; operations

(define (insert-queue! queue item)
  (let
    ((new-pair (cons item '())))
    (cond
      ((empty-queue? queue)
       (set-front-ptr! queue new-pair)
       (set-rear-ptr! queue new-pair)
       queue)
      (else
        (set-cdr! (rear-ptr queue) new-pair)
        (set-rear-ptr! queue new-pair) queue))))

(define (delete-queue! queue)
  (cond
    ((empty-queue? queue)
     (error "DELETE! called with an empty queue" queue))
    (else
      (set-front-ptr! queue (cdr (front-ptr queue)))
      queue)))
