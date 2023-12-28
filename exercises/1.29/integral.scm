(define (sum term a next b)
  (if
    (> a b)
    0
    (+ (term a)
     (sum term (next a) next b))))

(define (integral f a b n) 
  (define h (/ (- b a) n))
  (define (get-y k)
    (f (+ a (* k h))))
  (define (term k)
    (if
      (= 1 (remainder k 2))
      (* 4 (get-y k))
      (* 2 (get-y k))))
  (define (inc n) (+ n 1))
  (*
    (/ h 3)
    (+
      (get-y 0)
      (sum term 1 inc (- n 1))
      (get-y n))))
