(load "/home/angel/sicp/exercises/3.33/connector.scm")
(load "/home/angel/sicp/exercises/3.33/constrains.scm")

(define (squarer a b)
  (define (process-new-value)
    (if
      (has-value? b)
      (if
        (< (get-value b) 0)
        (error "square less than 0: SQUARER" (get-value b))
        ; wasn't working because i was passing b straight up to
        ; sqrt, instead of using get-value to get the actual
        ; value of b
        (set-value!
          a
          (sqrt (get-value b))
          me))
      (set-value!
        b
        (square (get-value a))
        me)))
  (define (process-forget-value)
    (forget-value! a me)
    (forget-value! b me)
    (process-new-value))
  (define (me request)
    (cond
      ((eq? request 'I-have-a-value) (process-new-value))
      ((eq? request 'I-lost-my-value) (process-forget-value))
      (else (error "Unknown request: SQUARER" request))))
  (connect a me)
  (connect b me)
  me)
