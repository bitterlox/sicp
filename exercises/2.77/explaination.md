# explaination

apply-generic works by getting the type tags of the arguments it is passed,
performing a lookup in the table to check if there's any function installed
with the name provided and the arguments of the correct types. If yes it
strips the tags from the arguments and passes them to the function it found.
The interaction described in the exercise is fixed by what alice does because
complex numebers are now first tagged with 'complex and then an inner tag
informs us of wether it's in rectangular or polar form. By doing what alice
does we're allowing apply-generic to match on the 'complex tag and strip it
before passing it to functions that expect only 'rectangular or 'polar tags.

> from solution, was lazy to trace;
> Apply-generic will be called 2 times and the rectangular-package magnitude
> function is what is finally called. 
