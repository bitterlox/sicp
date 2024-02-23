(define (flatmap proc seq)
  (fold-right append '() (map proc seq)))
