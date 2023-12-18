# explaination

here is a table with the number we're multiplying by and
the number of steps the process takes

| b | step |
| --- | --- |
| 12 | 4 |
| 120 | 9 |
| 1200 | 13 |
| 12000 | 19 |
| 120000 | 22 |
| 1200000 | 27 |
| 12000000 | 32 |
| 120000000 | 35 |
| 1200000000 | 39 |

given the definition of order of growth i'm pretty confident to say that
there's two numbers k1 and k2 so that `k1*f(n) < log2(n) < k1*f(n)`; our procedure
has order of growth O(log2(n)) for number of steps
