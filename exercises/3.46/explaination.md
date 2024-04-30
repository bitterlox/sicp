# explaination

basically the mutex fails when two processes execute test-and-set! at the same
time, and one reads the state variable after the other one read it and is about
to set it, so both set it to true and both proceed in the execution, breaking
the premise of mutual exclusion
