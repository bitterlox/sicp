(define (print-label id amount kinds-of-coins) 
    (display id)
    (display " ")
    (display "[label=")
    (display "\"cc ")
    (display amount)
    (display " ")
    (display kinds-of-coins)
    (display "\"]\n")
)


(define (print-rel a b) 
    (display a)
    (display " -> ")
    (display b)
    (display "\n")
)


(define (count-change amount)
   (cc (random 100000000000000000000000000000) amount 5))

(define (cc node-id amount kinds-of-coins)
    (cond ((= amount 0) 1)
         ((or (< amount 0) (= kinds-of-coins 0)) 0)
         (else 
           (let (
                 (left-id (random 100000000000000000000000000000))
                 (right-id (random 100000000000000000000000000000))
                 ) 
                  (print-label node-id amount kinds-of-coins)
                  (print-label left-id amount (- kinds-of-coins 1))
                  (print-label node-id amount kinds-of-coins)
                  (print-label right-id (- amount (first-denomination kinds-of-coins)) kinds-of-coins)
                  (print-rel node-id left-id)
                  (print-rel node-id right-id)
           (+ (cc 
                left-id
                amount
                (- kinds-of-coins 1))
              (cc 
                right-id
                (- amount (first-denomination kinds-of-coins))
                kinds-of-coins))))))

(define (first-denomination kinds-of-coins)
   (cond ((= kinds-of-coins 1) 1)
         ((= kinds-of-coins 2) 5)
         ((= kinds-of-coins 3) 10)
         ((= kinds-of-coins 4) 25)
         ((= kinds-of-coins 5) 50)))
