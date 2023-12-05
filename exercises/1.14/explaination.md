# explaination

the order of growth of the space (in a tree-recursive process) is proportional to the depth of the tree
and we can see from the graph that the deepest branch is the one that runs `(cc 11 1)` so we can say that
the growth of space is O(n)

to get the order of growth of steps we need to know how many nodes the tree has;
we first compute cc with increasing values for kinds-of-coins

(cc 11 1) = has 2n+1 nodes
(cc 11 2) = has 6n-23 nodes

???

i looked at this solution https://sicp-solutions.net/post/sicp-solution-exercise-1-14/

it makes sort of sense, but he says there are at most floor(n/5)+1 "green nodes"
where a green node is the nodes where you subtract 5 from n; i don't see that,
i think there are floor(n/5)+2 green nodes  since floor(n/5)+1 is the number of
times you can subtract 5 from n, but it doesn't take into account the root node?

i sort of follow the solution for cc(n, 2) but i can't do algebra with summations
so i'll skip this
