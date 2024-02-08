# explaination

for addition and subtraction, width is a function only of the widths of the intervals
being added (or subtracted)

## addition & subtraction

```repl
1 ]=> (define i1 (make-interval 2 8))

;Value: i1

1 ]=> (define i2 (make-interval 8 12))

;Value: i2

1 ]=> (get-width (add-interval i1 i2))

;Value: 5

1 ]=> (get-width (sub-interval i1 i2))

;Value: 5

1 ]=> (get-width i1)

;Value: 3

1 ]=> (get-width i2)

;Value: 2

```

## multiplication & division

```repl

1 ]=> (define i1 (make-interval 2 8))

;Value: i1

1 ]=> (define i2 (make-interval 8 12))

;Value: i2

1 ]=> (get-width i1)

;Value: 3

1 ]=> (get-width i2)

;Value: 2

1 ]=> (get-width (mul-interval i1 i2))

;Value: 40

1 ]=> (get-width (div-interval i1 i2))

;Value: .4166666666666667
```
