(define (make-frame origin edge1 edge2)
  (list origin edge1 edge2))

(define (origin-vec frame)
  (car frame))

(define (edge1-vec frame)
  (cadr frame))

(define (edge2-vec frame)
  (caddr frame))
