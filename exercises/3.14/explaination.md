# explaination

mystery is a function that reverses the order of the elements in the list it is passed in place
and returns also a new list, reversed like the original

both look like this?

```
x:

 [ d, * ]
      |  
      + -> [ c, * ]
                |  
                + -> [ b, * ]
                          |  
                          + -> [ a, / ]

```

answer; not quite; this is is w, v is just (a) since the cdr of x was set to it in the first iteration;
