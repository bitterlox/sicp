(define (make-segment start end) (cons start end))

(define (start-segment s) (car s))
(define (end-segment s) (cdr s))


(define (make-point x y) (cons x y))

(define (x-point p) (car p))
(define (y-point p) (cdr p))

(define (midpoint-segment s)
  (define (average a b) (/ (+ a b) 2))
  (let (
        (x-start (x-point (start-segment s)))
        (x-end (x-point (end-segment s)))
        (y-start (y-point (start-segment s)))
        (y-end (y-point (end-segment s))))
    (make-point
      (average x-start x-end)
      (average y-start y-end))))


(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))
