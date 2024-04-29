# explaination

the problem here is that by exporting the serializer AND using it internally
we expose the caller to deadlocks: specifically in the case of serialized-exchange
we call the serializer two times and thus no operation can proceed, because when
we call the serializer on the outside with withdraw that operation is already serialized
with that serializer and will block.
