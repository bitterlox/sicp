(load "~/sicp/exercises/1.6/new-if.scm")
(define (sqrt-iter guess x) (new-if
                  (good-enough guess x)
                  guess
                  (sqrt-iter (improve guess x ) x)
))
