# explaination

the answer is that the interpreter returns an error because while evaluating
the procedure application we end up passing `2` as argument for `f`, but `f`
expects a procedure, not a number.
