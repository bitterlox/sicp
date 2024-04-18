
; or(a, b):
; a b
; 1 1 -> 1
; 0 1 -> 1
; 1 0 -> 1
; 0 0 -> 0

; and(a, b):
; a b
; 1 1 -> 1
; 0 1 -> 0
; 1 0 -> 0
; 0 0 -> 0


; and(not(a), not(b)):
; a b
; 1 1 -> 0
; 0 1 -> 0
; 1 0 -> 0
; 0 0 -> 1


; not(and(not(a), not(b))):
; a b
; 1 1 -> 1
; 0 1 -> 1
; 1 0 -> 1
; 0 0 -> 0


(define (or-gate a1 a2 output)
  (let ((c1 (make-wire)) 
         (c2 (make-wire)) 
         (c3 (make-wire)))
    (inverter a1 c1)
    (inverter a2 c2)
    (and-gate c1 c2 c3)
    (inverter c3 output))
  'ok)
