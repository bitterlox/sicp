(load "/home/angel/sicp/exercises/2.33/accumulate.scm")

(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y)) '() sequence))

; v nice
(define (append seq1 seq2)
  (accumulate cons seq2 seq1)))

(define (length sequence)
  (accumulate (lambda (x y) (+ 1 y)) 0 sequence))

; these are super cool but i can't imagine "accumulate" as a higher order procedure
; i'm still thinking about it in terms of the underlying implementation
