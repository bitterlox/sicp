# explaination

if the processes are run sequentially, concurrent exchanges will still yield
accounts with 10, 20, 30 $ balances in some order, given that all exchanges use
both accounts serializers, locking out access on both accounts untill the exchange
is complete.

If we use the first version of exchange this condition can be violated since exchanges
are note serialized between eachother, so it can happen that one account's balance is
decremented by multiple exchange processes concurrently before being incremented; this
should however keep the sum of balances the same since deposits to a given account
(and withdrawals for that matter)
