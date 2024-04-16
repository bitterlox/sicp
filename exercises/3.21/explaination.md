# explaination

what Eva means is that our queue implementation uses
two pointers to efficently perform insertion and deletion.
The Scheme repl doesn't know that we're doing that and to it our queue
is simply a pair with two pointers to other pairs;

Ben complains that 'b is added two times, but in reality the queue
is working as expected, as by appending be to the end of the list
(in the right pointer) it also shows up in the full list in the left pointer
(which, since it is a sequence of pairs the repl prints as a list)

when it deletes it it is still present in the right pointer since
the delete operation only modifies the start of the list
