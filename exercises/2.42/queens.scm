(load "/home/angel/sicp/exercises/2.40/enumerate-interval.scm")
(load "/home/angel/sicp/exercises/2.40/flatmap.scm")

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

(define empty-board '())

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
