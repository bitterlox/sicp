(load "/home/angel/sicp/exercises/3.47/mutex.scm")

(define (make-semaphore n)
  (let
    ((cell (list n)))
    (define (the-semaphore m)
      (cond
        ((eq? m 'acquire)
         (if
           (= (car cell) 0)
           (the-semaphore 'acquire)
           (begin
             (set! count (- count 1))
             (mutex 'release))))
        ((eq? m 'release)
         (mutex 'release)
         (set! count (+ count 1))
         'ok)))
    the-semaphore))

; i'm not sure if this solution is valid, i couldn't find anyone solving it like this
