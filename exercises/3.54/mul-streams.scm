(define ones (cons-stream 1 ones))

(define (mul-streams s1 s2) (stream-map * s1 s2))

(define (add-streams s1 s2) (stream-map + s1 s2))

(define integers
  (cons-stream 1 (add-streams ones integers)))

(define factorials
  (cons-stream 1 (mul-streams factorials (stream-cdr integers))))
