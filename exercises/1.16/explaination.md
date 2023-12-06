# explaination

the process is clearly O(1) for space since it's iterative

for number of steps, we run the functions for various ns, each 10x larger
than the previous:

| n | calls |
| --- | --- |
| 10 | 6 |
| 100 | 10 |
| 1000 | 16 |
| 10000 | 19 |
| 100000 | 23 |
| 1000000 | 27 |

---
edit: i wrote a good process but it was only good for even exponents; this 
is from a solution but i understand it
