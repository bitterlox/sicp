# explaination

# explicit dispatch
in a system structured this way, when adding new types we must modify the generic operations
to add a new condition to the dipatch, and when adding new operations we need to re-write
all of the dispatch accounting for the differnt types

# data-directed

here when adding new types we simply implement the functions we want to make available
to our generic operations and register them in the table; when adding new operations
we simply retrieve the constructors/selectors we need from the table

# message-passing

here when adding a new type we simply implement the dispatch fn for all of the operations
we want to make available; when adding a new operation we need to edit the types to
make a clause for the new operation

# answer

i would say data-directed approach is good for both situations, but for adding new operations
i would defintely prefer data-directed over message-passing, since in message-passing
i'd have to go and edit all of the types to add a new operation
