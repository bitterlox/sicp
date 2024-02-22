(load "/home/angel/sicp/exercises/2.33/accumulate.scm")

(define (accumulate-n op init seqs)
  (if
    (null? (car seqs))
    '()
    (cons
      (accumulate op init (map car seqs))
      (accumulate-n op init (map cdr seqs)))))
