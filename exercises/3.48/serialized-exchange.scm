(define (serialized-exchange account1 account2)
  (let
    ((serializer1 (account1 'serializer))
     (id1 (account1 'id))
     (serializer2 (account2 'serializer))
     (id2 (account2 'id)))
    (if
      (> id1 id2)
      ((serializer2 (serializer1 exchange))
       account1
       account2)
      ((serializer1 (serializer2 exchange))
       account1
       account2))))
