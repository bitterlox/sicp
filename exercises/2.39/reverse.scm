(define (reverse sequence)
  (fold-right
    (lambda (first elems-to-the-right)
      (append elems-to-the-right (list first)))
    '()
    sequence))

(define (reverse sequence)
  (fold-left
    (lambda (elems-to-the-left last-elem) (cons last-elem elems-to-the-left))
    '()
    sequence))
