(load "/home/angel/sicp/exercises/3.56/merge-streams.scm")
(load "/home/angel/sicp/exercises/3.56/scale-stream.scm")

(define S (cons-stream 1 (merge
                           (merge
                             (scale-stream S 2)
                             (scale-stream S 3))
                           (scale-stream S 5))))
