# explaination

in the first procedure the list is reversed due to the

```scheme
...
            (cons
              (square (car things))
              answer))))
...
```

by doing this each iteration answer will be added to the end of a new sequence
resulting in a reversed list

in the first case it doesn't work because the returned object is not a list;

a list is a sequence of pairs in the form

`(a (b (c (d nil))))`

what the second procedure is returning is an object of shape

`((((nil a) b) c) d)`
