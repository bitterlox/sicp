(load "/home/angel/sicp/exercises/3.30/full-adder.scm")

(define (ripple-carry-adder a-wires b-wires s-wires c-wire)
  (if
    (not (= (length a-wires) (length b-wires) (length c-wires)))
    (error "wire lists are not of same length"))
  (define (iter a-ws b-ws s-ws cin)
    (if
      (> (length a) 1)
      (let
        ((cout (make-wire)))
        (full-adder
          (car a-ws)
          (car b-ws)
          cin
          (car s-ws)
          cout)
        (iter 
          (cdr a-wires)
          (cdr b-wires)
          (cdr s-wires)
          cout))))
  (iter a-wires b-wires s-wires c-wire))
