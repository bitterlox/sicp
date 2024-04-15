# explaination

the procedure doesn't work because it counts
the same pair as being two distinct pairs

```

for this one it returns 3:

     [ a, * ]
          |  
          +--> [ b, * ]
                    |  
                    +--> [ c, / ]


for this one it returns 4:

     [ *, * ]
       |  |  
       +--+--> [ b, * ]
                    |  
                    +--> [ c, / ]


for this one it returns 7:

     [ *, * ]
       |  |  
       +--+--> [ *, * ]
                 |  |  
                 +--+--> [ c, / ]

this one loops infinitely:
 + ---------------------------+
 |                            |
 |                            |
 +-->[ a, * ]                 |
          |                   | 
          + -> [ b, * ]       |
                    |         |
                    + -> [ c, * ]
```
