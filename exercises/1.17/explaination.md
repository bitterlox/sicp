# explaination

here is a table with the number we're multiplying by and
the number of steps the process takes

| b | step |
| --- | --- |
| 12 | 5 |
| 120 | 10 |
| 1200 | 14 |
| 12000 | 20 |
| 120000 | 23 |
| 1200000 | 28 |
| 12000000 | 33 |
| 120000000 | 36 |
| 1200000000 | 40 |

given the definition of order of growth i'm pretty confident to say that
there's two numbers k1 and k2 so that `k1*f(n) < log2(n) < k1*f(n)`; our procedure
has order of growth O(log2(n)) for number of steps
