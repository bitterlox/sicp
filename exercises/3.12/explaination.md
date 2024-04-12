# explaination

```
x:

 [ a, * ]
      |  
      + -> [ b, / ]

```


```
(cdr x):

[ b, / ]

```


after (append! x y)


```
x:

[ b, * ]
     |  
     + -> [ c, * ]
               |  
               + -> [ d, / ]
```
