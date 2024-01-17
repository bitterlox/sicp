(define (tan-cf x k)
  (define (n i)
    (if
      (= i 1)
      x
      (square x)))
  ; this is horrible perfomance wise
  ; but idc, it's a get it done situation
  (define (d i)
    (if
      (= i 1)
      1
      (+ 2 (d (- i 1)))))
  (define (rec i)
    (if
      (= k i)
      (/
        (n i)
        (d i))
      (/
        (n i)
        (-
          (d i)
          (rec (+ i 1))))))
  (rec 1))
