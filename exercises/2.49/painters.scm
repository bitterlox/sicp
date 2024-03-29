(load "/home/angel/sicp/exercises/2.49/segments->painter.scm")
(load "/home/angel/sicp/exercises/2.46/vectors.scm")
(load "/home/angel/sicp/exercises/2.47/segments.scm")

(define (outline frame)
  (segments->painter 
    (list
      (make-segment
        (make-vect 0 0)
        (make-vect 0 1))
      (make-segment
        (make-vect 0 0)
        (make-vect 1 0))
      (make-segment
        (make-vect 1 0)
        (make-vect 1 1))
      (make-segment
        (make-vect 0 1)
        (make-vect 1 1)))))

(define (draw-x frame)
  (segments->painter 
    (list
      (make-segment
        (make-vect 0 0)
        (make-vect 1 1))
      (make-segment
        (make-vect 0 1)
        (make-vect 1 0)))))


(define (diamond frame)
  (segments->painter 
    (list
      (make-segment
        (make-vect 0.5 0)
        (make-vect 0 0.5))
      (make-segment
        (make-vect 0.5 0)
        (make-vect 1 0.5))
      (make-segment
        (make-vect 0 0.5)
        (make-vect 0.5 1))
      (make-segment
        (make-vect 0.5 1)
        (make-vect 1 0.5)))))

;; skipped wave
