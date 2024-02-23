(load "/home/angel/sicp/exercises/2.41/ordered-triple.scm")

(define (ordered-triple-sum n s)
  (filter
      (lambda (triple) (= (fold-right + 0 triple) s))
      (ordered-triple n)))
