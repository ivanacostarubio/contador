TALLY
====

It a way to count the amount of times each word appears on a string. 

USAGE
-----

`@sentence = Contador.new("Tally is cool.")`

`=> #<Contador:0x10103f488 @final={:is=>1, :cool=>1, :tally=>1}, @string="Tally is cool.">`

`@sentence.multiplicity`

`=> {:is=>1, :cool=>1, :tally=>1}` 

OMITING REQUENT WORDS
----------------------

We use a global for omiting frequent words. For example:

`$omit = "yo no"`





