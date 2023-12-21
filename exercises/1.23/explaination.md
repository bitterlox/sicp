# explaination

reworked the code that measured the time it takes
for the prime test to run to use `with-timings` builtin
which returns ticks instead of seconds and i feel is better

times are in ticks
old-time column are running times when using smallest-divisor
new-time column are running times when using smallest-divisor-faster

| prime         | old-time | new-time | speedup |
|---------------|----------|----------|---------|
| 1009          | 0        | 0        | 0,00    |
| 1013          | 0        | 0        | 0,00    |
| 1019          | 0        | 0        | 0,00    |
| 10007         | 1        | 0        | 0,00    |
| 10009         | 0        | 0        | 0,00    |
| 10037         | 0        | 0        | 0,00    |
| 100003        | 1        | 0        | 0,00    |
| 100019        | 1        | 0        | 0,00    |
| 100043        | 0        | 1        | 0,00    |
| 1000003       | 1        | 1        | 1,00    |
| 1000033       | 1        | 1        | 1,00    |
| 1000037       | 1        | 1        | 1,00    |
| 100000007     | 10       | 8        | 1,25    |
| 100000037     | 10       | 7        | 1,43    |
| 100000039     | 11       | 8        | 1,38    |
| 1000000007    | 31       | 18       | 1,72    |
| 1000000009    | 29       | 18       | 1,61    |
| 1000000021    | 33       | 19       | 1,74    |
| 10000000019   | 94       | 70       | 1,34    |
| 10000000033   | 109      | 72       | 1,51    |
| 10000000061   | 96       | 63       | 1,52    |
| 100000000003  | 305      | 236      | 1,29    |
| 100000000019  | 339      | 197      | 1,72    |
| 100000000057  | 381      | 177      | 2,15    |
| 1000000000039 | 921      | 594      | 1,55    |
| 1000000000061 | 990      | 632      | 1,57    |
| 1000000000063 | 895      | 617      | 1,45    |

---

average speedup is ~1.46x
i don't know why it's not 2x, but by tracing the function i see
that sometimes we do an extra step where we try a divisor that is already
greater than sqrt(n). For example, in checking 31, the slow version
would stop at 6 (sqrt of 31 is ~5.56) wheras the fast version still
checks 7

---

looking at a solution, the actual reason is we added a bit of overhead
in the form of an additional function call, an if statement, etc
