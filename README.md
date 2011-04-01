TALLY
====

It a way to count the amount of times each word appears on a string. 


INSTALL
-------

`gem install contador`

USAGE
-----

`require `contador`

`@sentence = Contador.new("Esto sale todo")`

`=> #<Contador:0x10212a860 @final={:esto=>1, :sale=>1, :todo=>1}, @string="Esto sale todo", @omit=[]>`

`@sentence.multiplicity`

`=> {:esto=>1, :sale=>1, :todo=>1}`

OMITING REQUENT WORDS
----------------------

We use a global for omiting frequent words. For example:


`$omits = "esto no sale"`

`=> "esto no sale"`

`@sentence = Contador.new("Esto sale todo")`

`=> #<Contador:0x102110b68 @final={:todo=>1}, @string="Esto sale todo", @omit=[]>`

`@sentence.multiplicity`

`=> {:todo=>1}` 
