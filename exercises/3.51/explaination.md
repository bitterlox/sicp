# explaination

instinctively i would say that the stream-maps simply returns a new list
made up of the same elements as before, printing the delayed objects;
since display-line doesn't force its argument, it will not print the numbers

the stream-ref ops on the other hand do print numbers;

---

all wrong, so checked a solution and it makes sense:

in the first call we just print 0, since that's the first number and then
the x variable is (cons 0 (delayed mapped stream with show))

when we do the first strean-ref we create more elements of the stream, so
we print more numbers; the second stream ref prints only two numbers because
the other numbers are just themselves, the show functions returns the number
after printing;
