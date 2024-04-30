# explaination

this method of deadlock avoidance works because it makes the choice of the order
of serializers independent of the order of the parameters passed to the exchange
procedure; in other words, given two accounts, the exchange procedure will serialize
the exchange deterministically given two accounts;
