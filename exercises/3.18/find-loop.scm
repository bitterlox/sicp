(define (is-cycle l)
  (let
    ((visited '()))
    (begin
      (define (loop lis)
        (if (not (pair? lis)) #f)
        (set! visited (cons lis visited))
        (if
          (memq lis visited)
          #t
          (or
            (loop (car lis))
            (loop (cdr lis)))))
      (loop l))))

; we need to add to the visited list each pair starting from the top one,
; not the cars/cdrs
