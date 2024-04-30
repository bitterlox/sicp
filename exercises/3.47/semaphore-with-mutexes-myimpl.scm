(load "/home/angel/sicp/exercises/3.47/mutex.scm")
(load "/home/angel/sicp/exercises/2.40/enumerate-interval.scm")

(define (make-semaphore n)
  (let
    ((acquired '())
     (mutexes
       (map
         (lambda (i) (make-mutex))
         (enumerate-interval 1 n))))
    (define (the-semaphore m)
      (cond
        ((eq? m 'acquire)
         (if
           (= (length mutexes) 0)
           (the-semaphore 'acquire)
           (let
             ((m (car mutexes)))
             (begin
               (set! acquired (cons m acquired))
               (set! mutexes (cdr mutexes))
               (m 'acquire)))))
        ((eq? m 'release)
         (let
           ((m (car acquired)))
           (set! acquired (cdr acquired))
           (set! mutexes (cons m mutexes))
           (m 'release)))))
    the-semaphore))

; i think this is valid but wastes resources; each mutex isn't actually used to block anything
; we're blocking at the =lenght check at the semaphore level
