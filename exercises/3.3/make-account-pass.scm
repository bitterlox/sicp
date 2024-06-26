(define (make-account balance password)
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
      ((not (eq? password given-password)) (error "Incorrect password!"))
      ((eq? m 'withdraw) withdraw)
      ((eq? m 'deposit) deposit)
      (else (error "Unknown request: MAKE-ACCOUNT" m))))
  dispatch)
