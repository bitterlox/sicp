# explaination

if we implement sqrt-stream with the guesses local variable we can
reference guesses in its own definition and avoid re-evaluating
(sqrt-stream x)
If we didn't implement memoization the two procedures would not differ in 
efficiency.
