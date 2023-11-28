# explanation

I did look it up on SO, but, this recurses infinitely because, new-if is a procedure.

The evaluation rule for procedures in scheme is that we first evaluate all subexpressions;

this means that, new-if continures recursively calling sqrt-iter even when the predicate is false beacuse it's trying to evaluate all of the operands.
