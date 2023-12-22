# explaination

from tracing both of the functions i can observe that the result is the same;
however, the version of expmod provided by Alyssa has order of growth O(log(n))
when looking at the steps required, it seems that the space required grows very
large quickly, as the function does not compute intermediate results like in the
good implementation of expmod, but rather returns the full exponentiation first
and then performs the remainder operation
