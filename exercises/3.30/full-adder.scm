(load "/home/angel/sicp/exercises/3.30/half-adder.scm")
(load "/home/angel/sicp/exercises/3.28/or-gate.scm")

         (fist-ha-cout (make-wire)) 
         (second-ha-cout (make-wire)))
    (half-adder b cin 1st-ha-sum fist-ha-cout)
    (half-adder a 1st-ha-sum sum second-ha-cout)
    (or-gate fist-ha-cout second-ha-cout cout)
  'ok))
