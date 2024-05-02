(define (stream-map-single proc s)
  (if
    (stream-null? s)
    the-empty-stream
    (cons-stream
      (proc (stream-car s)
            (stream-map proc (stream-cdr s)))))


(define (stream-map proc . argstreams)
  (if
    (stream-null? (car argstreams))
    the-empty-stream
    (stream-cons (apply proc (map stream-car argstreams))
          (apply stream-map (cons proc (map stream-cdr argstreams))))))
