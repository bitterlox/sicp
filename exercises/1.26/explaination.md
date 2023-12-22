# explaination

the root of the problem is that due to the fact that the interpreter uses
applicative-order evaluation, by using an explicit product we do the work
of evaluating `(expmod base (/ exp 2) m)` twice, whereas by using the square
procedure it is only evaluated the one time and passed as argument to the
procedure. No idea how to calculate the complexity of this worse case tho.
