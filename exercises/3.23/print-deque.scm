(load "/home/angel/sicp/exercises/3.23/deque.scm")

(define (print-deque deque)
  (let
    ((items (list (cell-val (rear-ptr deque)))))
    (begin
      (define (iter cell)
        (if (eq? cell '()) items)
        (set!
          items
          (cons (cell-val cell) items))
        (iter (cell-prev cell)))
      (iter (rear-ptr deque)))))
