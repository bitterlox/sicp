(define (or-gate a1 a2 output)
  (define (or-action-procedure)
    (let
      ((new-value (logical-or (get-signal a1) (get-signal a2))))
      (after-delay
        or-gate-delay
        (lambda ()
          (set-signal! output new-value)))))
  (add-action! a1 or-action-procedure)
  (add-action! a2 or-action-procedure)
  'ok)

(define (logical-or b1 b2)
  (cond
    ((= b1 1) 1)
    ((= b2 1) 1)
    (else 0)))
