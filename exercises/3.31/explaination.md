# explaination

the action is ran right away because when we "call" a gate procedure
or a circuit procedure we want the "result" wires to be populated
right away. Since realistically a result wire from one circuit or
gate will be the input of another, if we were to wait for a change
in one of the starting wires to trigger the cascade of actions we would
need to set the values of the starting wires after having called a circuit
