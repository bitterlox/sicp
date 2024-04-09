(define rand
  (define (dispatch m)
    (let
      ((x random-init))
      (cond
        ((eq? m 'generate)
         (lambda ()
           (set! x (rand-update x))
           x))
        ((eq? m 'reset)
         (lambda (val)
           (set! x val))))))
  dispatch)
