(define rolling-account-id 0)

(define (make-account-and-serializer balance)
  (define (withdraw amount)
    (if
      (>= balance amount)
      (begin
        (set! balance (- balance amount))
        balance)
      "Insufficient funds"))
  (define (deposit amount)
    (set! balance (+ balance amount)) balance)
  (let
    ((balance-serializer (make-serializer))
     (account-id rolling-account-id))
    (define (dispatch m)
      (cond
        ((eq? m 'withdraw) withdraw)
        ((eq? m 'deposit) deposit)
        ((eq? m 'balance) balance)
        ((eq? m 'id) account-id)
        ((eq? m 'serializer) balance-serializer)
        (else (error "Unknown request: MAKE-ACCOUNT" m))))
    (set! rolling-account-id (+ account-id 1))
    dispatch))
