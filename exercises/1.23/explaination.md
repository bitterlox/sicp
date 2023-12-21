# explaination

reworked the code that measured the time it takes
for the prime test to run to use `with-timings` builtin
which returns ticks instead of seconds and i feel is better

number | total-time in ticks () | time (gc) | time(total)
--- | --- | --- | ---
1009 | 0 | 0 | 0
1013 | 0 | 0 | 0
1019 | 0 | 0 | 0
10007 | 0 | 0 | 0
10009 | 0 | 0 | 1
10037 | 0 | 0 | 0
100003 | 0 | 0 | 1
100019 | 0 | 0 | 0
100043 | 0 | 0 | 1
1000003 | 0 | 0 | 2
1000033 | 0 | 0 | 1
1000037 | 0 | 0 | 1
100000007 | 20 | 0 | 13
100000037 | 10 | 0 | 12
100000039 | 0 | 0 | 6
1000000007 | 30 | 0 | 32
1000000009 | 20 | 0 | 28
1000000021 | 20 | 0 | 28
10000000019 | 100 | 0 | 104
10000000033 | 90 | 0 | 83
10000000061 | 80 | 0 | 85
100000000003 | 310 | 0 | 300
100000000019 | 310 | 0 | 309
100000000057 | 280 | 0 | 283
1000000000039 | 920 | 20 | 938
1000000000061 | 950 | 0 | 945
1000000000063 | 900 | 10 | 909

re-running the primes i found in 1.22 through
find-smallest-divisor to see the speedup:

number | time (ticks) | time (gc) | time(total)
--- | --- | --- | ---
1009 | 0 | 0 | 0
1013 | 0 | 0 | 0
1019 | 0 | 0 | 0
10007 | 0 | 0 | 0
10009 | 0 | 0 | 0
10037 | 0 | 0 | 0
100003 | 0 | 0 | 0
100019 | 0 | 0 | 0
100043 | 0 | 0 | 1
1000003 | 0 | 0 | 1
1000033 | 0 | 0 | 1
1000037 | 0 | 0 | 1
100000007 | 10 | 0 | 7
100000037 | 10 | 0 | 7
100000039 | 0 | 0 | 9
1000000007 | 30 | 0 | 24
1000000009 | 20 | 0 | 21
1000000021 | 10 | 0 | 20
10000000019 | 70 | 0 | 60
10000000033 | 60 | 0 | 56
10000000061 | 50 | 0 | 57
100000000003 | 210 | 0 | 200
100000000019 | 200 | 0 | 205
100000000057 | 230 | 0 | 229
1000000000039 | 660 | 0 | 661
1000000000061 | 640 | 30 | 668
1000000000063 | 560 | 0 | 561

---

ok so i don't want to run any sort of calculations to prove this but, eye-balling it
it's def faster, as most of the excution times in the second table are lower than the
ones in the other table for the same prime, but it seems that it's still growing at about
sqrt(n). I think what this improvement did is remove a constant amount of steps from all
calculations, but didn't significantly alter the order of growth away from sqrt(n)
