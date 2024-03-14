

; we're assuming that the sets of records of different divisions
; are somelìthing along the lines of
; '((John-smith ((addess foo-street) (salary 10000))) ())
; or
; '(((key (john smith)) (record ((addess foo-street) (salary 10000)))) ())
; it doesn't matter because when we register the procedure in our data-directed
; table we'll make sure to implement it according to the specific division's
; peculiarities

; the text says the procedure should be applicable to any division's file
; this maybe means that division files should at least have the division
; name somewhere? something like
; '((division-name foo-division) (records (...)))
(define (get-record employee-name division-file)
  ((get 'get-record (get-name division-file)) employee-name division-file))


; how tf is this supposed to be keyed idk just have a set of lists
; where one is like '(salary 10000)
(define (get-salary employee-name division-file)
  ((get 'get-salary (get-name division-file)) employee-name division-file))

; this exercise feels pointless if i can't test it
(define (find-employee-record employee-name division-files)
  (car (flatmap
    (lambda (division-file) (get-record employee-name division-file))
    division-files)))

; d. they just register new get-record and get-salary procedures
; written respecting the new division's data structures into the
; data-directed table

; ok so consulting solution i was right in assuming each division file
; needs to provide a way to know which division it is;
; also needed to think about how each file needs to provide their own
; procedures to interface with its data (so a regsiter-procedures-like fn)
; and when we get records out of our generic functions we need to type-tag them
; so we know where they came from


