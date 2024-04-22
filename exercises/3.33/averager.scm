(load "/home/angel/sicp/exercises/3.32/constrains.scm")

(define (averager a b c avg)
  (let
    ((ab-sum (make-connector))
     (abc-sum (make-connector))
     (1-third (make-connector)))
    (adder a b ab-sum)
    (adder ab-sum c abc-sum)
    (constant (/ 1 3) 1-third)
    (multiplier abc-sum 1-third avg)
    'ok))
