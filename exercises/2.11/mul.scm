(load "/home/angel/sicp/exercises/2.7/constructors.scm")
(load "/home/angel/sicp/exercises/2.7/selectors.scm")

(define (mul-interval x y)
  (define (get-lower-bound x0pos y0pos x1pos y1pos)
    (cond
      ()))
  (let
    ((x0pos (> lower-bound x) 0)
     (y0pos (> lower-bound y) 0)
     (x1pos (> upper-bound x) 0)
     (y1pos (> upper-bound y) 0))
    (cond
      ((and
         x-lo-pos
         y-lo-pos) ()))))


; 9 cases:
; x-lo | x-up | y-lo | y-up |
;  +   |  +   |  +   |  +   |
;  +   |  +   |  +   |  +   |
;  +   |  +   |  +   |  +   |
;  +   |  +   |  +   |  +   |
; for each pair of bound the sign can be:
; + -, - +, ++, --

