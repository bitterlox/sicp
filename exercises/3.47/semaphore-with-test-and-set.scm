(load "/home/angel/sicp/exercises/3.47/mutex.scm")

(define (make-semaphore n)
  (let
    ((cell (list n)))
    (define (the-semaphore m)
      (cond
        ((eq? m 'acquire)
         (if
           (test-and-set! cell)
           (the-semaphore 'acquire)))
        ((eq? m 'release)
         (clear! cell)
         'ok)))
    the-semaphore))

(define (clear! cell)
  (set-car! cell (+ (car cell) 1)))

(define (test-and-set! cell)
  (without-interrupts
    (lambda ()
      (if
        (= (car cell) 0)
        true
        (begin
          (set-car! cell (- (car cell) 1))
          false)))))
