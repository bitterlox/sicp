(define (make-pp-account balance password)
  (let
    ((joint-pw 'a))
    (begin
      (define (withdraw amount)
       (if
         (>= balance amount)
         (begin
           (set! balance (- balance amount)) balance)
         "Insufficient funds"))
     (define (deposit amount)
       (set! balance (+ balance amount)) balance)
     (define (dispatch m given-password)
      (cond
        ((and
           (not (eq? given-password password))
           (not (eq? given-password joint-pw)))
         (error "Incorrect password!"))
           ((eq? m 'set-joint-pw) (lambda (pw) (set! joint-pw pw)))
           ((eq? m 'withdraw) withdraw)
           ((eq? m 'deposit) deposit)
           (else (error "Unknown request: MAKE-ACCOUNT" m)))))
    (trace dispatch)
    dispatch))

(define (make-joint pp-acc pp-acc-pass joint-pass)
  ((pp-acc 'set-joint-pw pp-acc-pass) joint-pass)
  pp-acc)
