(define (make-accumulator inital) 
  (let
    ((sum inital))
    (lambda (to-add)
      (begin
        (set! sum (+ sum to-add))
        sum))))
