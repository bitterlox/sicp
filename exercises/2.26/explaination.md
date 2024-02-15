# explaination

`(append x y)`
will print
`( 1 2 3 4 5 6)`

`(cons x y)`
will print
`((1 2 3) . (4 5 6))`
wrong! actually prints
`((1 2 3) 4 5 6)`
makes sense due to how lists are implemented over pairs

`(list x y)`
will print
`((1 2 3) (4 5 6))`
