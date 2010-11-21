TALLY
====

It a way to count the amount of times each word appears on a string. 

USAGE
-----

`@sentence = Tally.new("Tally is cool.")`

`=> #<Tally:0x10103f488 @final={:is=>1, :cool=>1, :tally=>1}, @string="Tally is cool.">`

`@sentence.multiplicity`

`=> {:is=>1, :cool=>1, :tally=>1}` 

