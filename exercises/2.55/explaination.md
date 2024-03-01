# explaination
this happens because `''abracadabra` is analogous to `'(quote abracadabra), as the second
`'` gets expanded by the first one; thus getting the car of that list returns quote
