(define (make-monitored fn)
  (let
    ((count 0))
    (lambda (arg)
      (if
        (eq? arg 'how-many-calls?)
        count
        (begin
          (set! count (+ count 1))
          (fn arg))))))
