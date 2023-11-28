# explanation

the test fails for small numbers:
(sqrt 0.000000049)
-> .03125052215451019
(actual is 0.0002213594362117865532399225481102902973603688597527651778800253...)
This happens because we're hardcoding the 0.0001 in the good-enough condition

the test should technically fail for large numbers since there's a limit to what we can store in a floa64 i assume they're using?
But i wasn't able to test this, since for anything > 500000000000000 it hangs, so i guess it hits max number storable in a float?
--- actually this is wrong

the reason it doesn't work with large numbers is because of how we represent floating point numbers in computers.
Basically the larger the number, the greater the gap between consecutive floating point numbers.
And when this gap is > 0.001 (our hard-coded condition for the program to decide a guess is good enough) it will keep improving it ad infinitum.
But it will never finish since it will never find a guess where the difference between it squared and the x is less than 0.001.
(looked this up on the internet as well) (https://sicp-solutions.net/post/sicp-solution-exercise-1-7/)
