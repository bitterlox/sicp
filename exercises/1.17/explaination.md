
here is a table with the number we're multiplying by and
the number of steps the process takes

| b | step |
| --- | --- |
| 10 | 5 |
| 100 | 9 |
| 1000 | 15 |
| 10000 | 18 |
| 100000 | 22 |
| 1000000 | 26 |
| 10000000 | 31 |
| 100000000 | 38 |
| 1000000000 | 42 |

given the definition of order of growth i'm pretty confident to say that
there's two numbers k1 and k2 so that `k1*f(n) < log2(n) < k1*f(n)`; our procedure
has order of growth O(log2(n)) for number of steps
