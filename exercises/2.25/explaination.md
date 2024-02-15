# explaination

1)
```repl
1 ]=> (define l (list 1 3 (list 5 7) 9))

;value: l

1 ]=> l

;value: (1 3 (5 7) 9)

1 ]=> (car (cdr (car (cdr (cdr l)))))

;value: 7
```

2)
```repl
1 ]=> (define l (list (list 7)))

;Value: l

1 ]=> l

;Value: ((7))

1 ]=> (car (car l))

;Value: 7

```

3)
```repl
1 ]=> (define l (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))

;Value: l

1 ]=> l

;Value: (1 (2 (3 (4 (5 (6 7))))))

1 ]=> (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr l ))))))))))))))

;Value: 7


```
