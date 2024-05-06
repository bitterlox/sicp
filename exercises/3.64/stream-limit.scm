(define (stream-limit stream tolerance)
  (let
    ((elem1 (stream-ref stream 0))
     (elem2 (stream-ref stream 1)))
    (if
      (< (- elem2 elem1) tolerance)
      elem2
      (stream-limit (stream-cdr stream) tolerance))))
