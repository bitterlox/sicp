# explaination

result from interpreter:
```scheme
1 ]=> (list 1 (list 2 (list 3 4)))

;Value: (1 (2 (3 4)))

```

box-and-pointer notation

```box-and-pointer

(1 (2 (3 4)))
     |
     V
 [ * , * ]
   |   |
   V   V
   1   (2 (3 4)) ~ ((2 (3 4)), nil)
          | 
          V 
      [ * , / ]
        |
        V
      (2 (3 4))
          |
          V
      [ * , * ]

        |   |
        V   V
        2  ((3 4)) ~ ((3 4), nil)
              | 
              V 
          [ * , / ]
            |
            V
          [ * , * ]
            |   |
            V   V
            3  (4) ~ (4, nil)
                | 
                V 
              [ * , / ]
                |   |
                V   V
                4  nil

```

tree-structure

```tree

(1 (2 (3 4)))
    / \
   1   (2 (3 4))
         / \
        2  (3 4)
            /  \
           3    (4, nil)
                 /  \
                4    nil
```
