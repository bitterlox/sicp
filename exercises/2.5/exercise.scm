
(define (log2 x) (/ (log x) (log 2)))

(define (log3 x) (/ (log x) (log 3)))

(define (cons a b)
  (define (div-by-n-iter n div-by count)
    (cond
      ((= (remainder n div-by) 0) (div-by-n-iter (/ n div-by) div-by (+ count 1)))
      (else count)))
  (define (get-a n)
    (div-by-n-iter n 2 0))
  (define (get-b n)
    (div-by-n-iter n 3 0))
  ;(trace div-by-three-iter)
  (let ((n (*
             (expt 2 a)
             (expt 3 b))))
    (lambda (x)
      (cond
        ((= x 2) (display n) (newline) (get-a n))
        ((= x 3) (get-b n))
        (else (error "wrong param"))))))

(define (car z) (z 2))
(define (cdr z) (z 3))

