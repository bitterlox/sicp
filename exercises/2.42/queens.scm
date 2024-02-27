(load "/home/angel/sicp/exercises/2.40/enumerate-interval.scm")
(load "/home/angel/sicp/exercises/2.40/flatmap.scm")
(load "/home/angel/sicp/exercises/2.37/matrices.scm")

(define (queens board-size)
  (define (queen-cols k)
    (if
      (= k 0)
      (list empty-board)
      (filter
        (lambda (positions) (safe? k positions))
        (flatmap
          (lambda
            (rest-of-queens)
            (map
              (lambda (new-row) (adjoin-position new-row k rest-of-queens))
              (enumerate-interval 1 board-size)))
          (queen-cols (- k 1))))))
  (queen-cols board-size))


; my contribution

;; helpers

(define empty-vector (list 0 0 0 0 0 0 0 0))

(define empty-board
  (list
    empty-vector
    empty-vector
    empty-vector
    empty-vector
    empty-vector
    empty-vector
    empty-vector))

(define (matrix-+-matrix m n)
  (map (lambda (mi ni) (map + mi ni)) m n)) 

(define (vector-with-queen-at-col col)
  (cond
    ((= col 1) (list 1 0 0 0 0 0 0 0))
    ((= col 2) (list 0 1 0 0 0 0 0 0))
    ((= col 3) (list 0 0 1 0 0 0 0 0))
    ((= col 4) (list 0 0 0 1 0 0 0 0))
    ((= col 5) (list 0 0 0 0 1 0 0 0))
    ((= col 6) (list 0 0 0 0 0 1 0 0))
    ((= col 7) (list 0 0 0 0 0 0 1 0))
    ((= col 8) (list 0 0 0 0 0 0 0 1))
    (else (error "col out of bounds"))))

(define (matrix-with-vector-at-row vec row)
  (cond
    ((= row 1) (list
                   vec
                   empty-vector
                   empty-vector
                   empty-vector
                   empty-vector
                   empty-vector
                   empty-vector
                   empty-vector))
    ((= row 2) (list empty-vector
                     vec
                     empty-vector
                     empty-vector
                     empty-vector
                     empty-vector
                     empty-vector
                     empty-vector))
    ((= row 3) (list empty-vector
                     empty-vector
                     vec
                     empty-vector
                     empty-vector
                     empty-vector
                     empty-vector
                     empty-vector))
    ((= row 4) (list empty-vector
                     empty-vector
                     empty-vector
                     vec
                     empty-vector
                     empty-vector
                     empty-vector
                     empty-vector))
    ((= row 5) (list empty-vector
                     empty-vector
                     empty-vector
                     empty-vector
                     vec
                     empty-vector
                     empty-vector
                     empty-vector))
    ((= row 6) (list empty-vector
                     empty-vector
                     empty-vector
                     empty-vector
                     empty-vector
                     vec
                     empty-vector
                     empty-vector))
    ((= row 7) (list empty-vector
                     empty-vector
                     empty-vector
                     empty-vector
                     empty-vector
                     empty-vector
                     vec
                     empty-vector))
    ((= row 8) (list empty-vector
                     empty-vector
                     empty-vector
                     empty-vector
                     empty-vector
                     empty-vector
                     empty-vector
                     vec))
    (else (error "row out of bounds"))))

(define (make-matrix-with-queen col row)
  (let ((matrix
          (matrix-with-vector-at-row (vector-with-queen-at-col col) row)))
    (transpose matrix)))

;; fns for queen-cols

(define (adjoin-position row col prev-board)
  (matrix-+-matrix
    prev-board
    (matrix-with-vector-at-row
      (vector-with-queen-at-col col)
      row)))

; just missing the safe? procedure, should be done after after
; we're not using k here but i think it works the same
(define (safe? k positions)
  (fold-right
    (lambda (a b) (and a b))
    true 
    (map
      (lambda (row) (< (fold-right + 0 row) 2))
      positions)))



; key aspects
; in defining adjoin-position, we're passing it a row and a column (column is k)
; so it def needs to be at least a pair; i'm not sure why we're passing it
; rest-of-queens, maybe because in adjoin-position we also check to see if there's
; any queens on the row and mark it in the data? so like (row, col, Q), since we
; then filter with safe? and maybe in there we filter out the ones marked with Q

; i'm not really clear how the chess board looks overall tho; like how does this
; list we return evolve? is k = 0 an empty board or a 1x1 board with a queen?
; the text says that we're finding all possible 

; tip: re-read the exercises carefully, special emphasis on this piece:
; "already generated the sequence of all possible ways to place k-1
; queens in the first k-1 columns of the board" all possible ways means all
; possible chess boards, don't let yourself be tricked by that picture in the
; book
