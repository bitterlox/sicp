# explaination

i think by introducing this change, while protected-withdraw and protected-deposit
still may not execute at the same time, calls to any single one of them may execute
concurrently.

---

this is wrong, apparently functions won't interleave with themselves...
