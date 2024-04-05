(define (call-the-cops)
  (display "weee-woo-weee-woo!")
  (newline))

(define (make-account balance password)
  (define (withdraw amount)
    (if
      (>= balance amount)
      (begin 
        (set! balance (- balance amount)) balance)
      "Insufficient funds"))
  (define (deposit amount)
    (set! balance (+ balance amount)) balance)
  (let
    ((wrong-access-attempt 0))
    (begin
      (define (dispatch m given-password)
        (cond
          ((not (eq? password given-password))
           (set! wrong-access-attempt (+ wrong-access-attempt 1))
           (error "Incorrect password!"))
          ((= wrong-access-attempt 7) (call-the-cops))
          ((eq? m 'withdraw) withdraw)
          ((eq? m 'deposit) deposit)
          (else (error "Unknown request: MAKE-ACCOUNT" m)))
        )
      dispatch)))
