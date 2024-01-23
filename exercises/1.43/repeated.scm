(load "/home/angel/sicp/exercises/1.42/composition.scm")

(define (repeated f n) 
  (define (id x) x)
  (define (iter accFn i)
    (if
      (= i n)
      accFn 
      (iter
        (compose accFn f)
        (+ i 1))))
  (iter id 0))
