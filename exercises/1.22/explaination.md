# explaination

first three primes after 1000:

number | execution time
--- | ---
1009 | 0
1013 | 0
1019 | 0

first three primes after 10,000:

number | execution time
--- | ---
10007 | 0
10009 | 0
10037 | 0

first three primes after 100,000:

number | execution time
--- | ---
100003 | 0
100019 | 0
100043 | 0

first three primes after 1,000,000:

number | execution time
--- | ---
1000003 | 0
1000033 | 0
1000037 | 0

first three primes after 100,000,000:

n = 100,000,000
sqrt(n) = 10000

number | execution time
--- | ---
100000007 | 0.01s
100000037 | 0.02s
100000039 | 0.01s

first three primes after 1,000,000,000:

n = 1,000,000,000
sqrt(n) =~ 31622.77

number | execution time
--- | ---
1000000007 | 0.02s
1000000009 | 0.03s
1000000021 | 0.03s

first three primes after 10,000,000,000:

n = 10,000,000,000
sqrt(n) = 100000

number | execution time
--- | ---
10000000019 | 0.08s
10000000033 | 0.08s
10000000061 | 0.09s

first three primes after 100,000,000,000:

n = 100,000,000,000
sqrt(n) =~ 316227.76

number | execution time
--- | ---
100000000003 | 0.33s
100000000019 | 0.34s
100000000057 | 0.28s

first three primes after 1,000,000,000,000:

n = 1,000,000,000,000
sqrt(n) = 1000000

number | execution time
--- | ---
1000000000039 | 1.01s
1000000000061 | 0.91s
1000000000063 | 0.86s

---

each time we multiply n by 10, its square root increases by ~3.1622x
and the execution times indeed increase by about 3x.
However we can only start to notice this when n > 100,000,000, since
for numbers less than that the program prints 0. , probably because
hardware is pretty fast nowadays.
I think ultimately this does support the notion that programs on my
machine run in time proportional to the number of steps.

I could've refined this program to print code in millisecods or something,
but am satisfied with this answer.
