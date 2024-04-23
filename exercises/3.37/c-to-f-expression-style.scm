(load "/home/angel/sicp/exercises/3.33/constrains.scm")
(load "/home/angel/sicp/exercises/3.33/connector.scm")

(define (cv val)
  (let
    ((conn (make-connector)))
    (constant val conn)
    conn))

(define (c+ a1 a2)
  (let
    ((conn-sum (make-connector)))
    (adder a1 a2 conn-sum)
    conn-sum))

(define (c- a1 a2)
  (c+ a1 (cv (- 0 (get-value a2)))))

(define (c* m1 m2)
  (let
    ((conn-prod (make-connector)))
    (multiplier m1 m2 conn-prod)
    conn-prod))

(define (c/ dividend divisor)
  (c* dividend (cv (/ 1 (get-value divisor)))))
