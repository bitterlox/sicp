# explaination

when we define seq, sum gets incremented to 1

when we filter seq, we evaluate all the numbers from 2 to 20 to seq; one
would think we onlt add the even ones, but filter still needs to force
the odd numbers from the sequence to check if they're even or odd and that
by itself causes them to be added to sum; result: 211

the next filter keeps only 5 10 15 and 20 in the stream

the stream ref 7 is out of bounds

display-stream prints 5 10 15 20

---

this is all wrong but i can't understand it
