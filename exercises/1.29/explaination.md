# explaination

the results are the following:

```repl
1 ]=> (integral cube 0 1.0 100)

;Value: .25333333333333324

1 ]=> (integral cube 0 1.0 1000)

;Value: .2503333333333336
```

i would say that it's pretty accurate? the function that the book provides seems
to approach the value from below, while this function from above; maybe the book's
procedure is more accurate? 

---

 checked, there seems to be an error somewhere that makes mine less accurate;

 (https://sicp-solutions.net/post/sicp-solution-exercise-1-29/)

---

not using the same procedure as the solution but after fixing a mistake here is the result:

```repl
1 ]=> (integral cube 0 1.0 100)

;Value: .24999999999999992

1 ]=> (integral cube 0 1.0 1000)

;Value: .2500000000000003
```

i feel ok about this, it's super accurate now.
