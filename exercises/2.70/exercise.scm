(load "/home/angel/sicp/exercises/2.68/encode.scm")
(load "/home/angel/sicp/exercises/2.69/gen-huffman-enc-tree.scm")

(define pairs '((a 2) (get 2) (sha 3) (wah 1) (boom 1) (job 2) (na 16) (yip 9)))

(define tree (generate-huffman-tree pairs))

(define msg1 (encode '(Get a job) tree))
(define msg2 (encode '(Sha na na na na na na na na) tree))
(define msg3 (encode '(Get a job) tree))
(define msg4 (encode '(Sha na na na na na na na na) tree))
(define msg5 (encode '(Wah yip yip yip yip yip yip yip yip yip) tree))
(define msg6 (encode '(Sha boom) tree))

(define msg (append '() msg1 msg2 msg3 msg4 msg5 msg6))
