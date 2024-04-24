# explaination

while withdraw and deposit access the internal balance variable in a serialized
manner, when we want to access it from outside the object we may do so concurrently
as deposit or withdraw ops are executing. This may not be what we want, as in the time
between we request to view the balance and when it's returned some operations may
have changed it.

---
this is wrong, since with a serializer we still can't guarantee the order of operations
so a balance call, even if serialized, may return balance from before or after
call to other functions; moreover, since withdraw and deposit only have one set!
operations, we never get any intermediate state that isn't final, we either get
the old balance, or the new balance
