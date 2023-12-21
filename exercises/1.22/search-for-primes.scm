(load "/home/angel/sicp/exercises/1.22/prime?.scm")

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (cond
    ((prime? n)
     (report-prime (- (runtime) start-time))
     #t)
    (else #f)))

(define (report-prime elapsed-time)
  (define (round-off z n)
  (let ((power (expt 10 n)))
    (/ (round (* power z)) power)))
  (display " *** ")
  (display (round-off elapsed-time 8)))

(define (search-for-primes start count)
  (define (is-odd n) (= (remainder n 2) 1))
  (cond
    ((= count 0) 9)
    ((is-odd start) 
     (if
       (timed-prime-test start)
       (search-for-primes (+ start 2) (- count 1))
       (search-for-primes (+ start 2) count)))
    (else (search-for-primes (+ start 1) count))))

;(trace search-for-primes)
