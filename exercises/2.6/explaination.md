# explaination

```scheme
  (define zero (lambda (f) (lambda (x) x)))
  (define (add-1 n)
    (lambda (f) (lambda (x) (f ((n f) x)))))  
```

## define 1 and 2 directly

### define 1

> Hint: Use substitution to evaluate (add-1 zero)

=> (add-1 zero)

=> ((lambda (n) (lambda (f) (lambda (x) (f ((n f) x))))) (lambda (f) (lambda (x) x)))

=> (lambda (f) (lambda (x) (f (((lambda (f) (lambda (x) x)) f) x))))

=> (lambda (f) (lambda (x) (f (((lambda (x) x) f) x))))

=> (lambda (f) (lambda (x) (f ((f) x))))

=> (lambda (f) (lambda (x) (f (f x))))

---

so, 1 is

```scheme
(define one 
  (lambda (f) (lambda (x) (f (f x)))))
```

---

### define 2

=> (add-1 1)

=> ((lambda (n) (lambda (f) (lambda (x) (f ((n f) x))))) (lambda (f) (lambda (x) (f (f x)))))

=> (lambda (n) (lambda (f) (lambda (x) (f (((lambda (f) (lambda (x) (f (f x)))) f) x)))))

=> (lambda (n) (lambda (f) (lambda (x) (f ((lambda (x) (f (f x))) x)))))

=> (lambda (n) (lambda (f) (lambda (x) (f (f (f x))))))

---

so, 2 is

```scheme
(define one 
  (lambda (n) (lambda (f) (lambda (x) (f (f (f x)))))))
```

---

peaked at a solution but like didn't even watch it; just needed to know it could be done for the motivation
