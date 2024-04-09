(define f
  (let
    ((called 0))
    (lambda (param)
      (if (= called 0) (begin (set! called (+ called 1)) param) 0))))
