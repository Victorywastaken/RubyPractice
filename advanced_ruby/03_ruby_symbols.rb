## Symbols
#Ruby has an additional data type that is similar to Strings, called Symbols. Let's explore what differentiates a Symbol from a String, and how to use them in our code. In Ruby, we can denote a symbol using a colon (:) before writing characters. Where a string is wrapped in quotes, a symbol just has a leading colon. Both strings and symbols contain many characters, but they are not equivalent.

str = "hello"   # the string
sym = :hello    # the symbol

p str.length    # => 5
p sym.length    # => 5

p str[1]        # => "e"
p sym[1]        # => "e"

p str == sym    # => false
# a string is different from a symbol!

##Symbols are Immutable
#The most apparent difference between strings and symbols is that strings are mutable, while symbols are immutable. This means that string can be "changed", but a symbol can never be "changed":

str = "hello"
sym = :hello

str[0] = "x"
#sym[0] = "x" # => This will raise an error

p str   # => "xello"
p sym   # => :hello

#Under the hood, each time we reference a literal string, Ruby will allocate a piece of our machine's memory to store that string. More memory must always be allocated for a new string, even if it is a duplicate value, because strings are mutable! We must track changes to the strings separately, so we need to store the two instances of the string in distinct memory locations.


"hello".object_id   # => 70233443667980
"hello".object_id   # => 70233443606440
"hello".object_id   # => 70233443438700

:hello.object_id    # => 2899228
:hello.object_id    # => 2899228
:hello.object_id    # => 2899228

## Symbols as hash keys
#We'll see the preference of using symbols in a few places in Ruby. For now, one common way to use a symbol is as the key in a hash:

my_bootcamp = { :name=>"App Academy", :color=>"red", :locations=>["NY", "SF", "ONLINE"] }
p my_bootcamp           # => {:name=>"App Academy", :color=>"red", :locations=>["NY", "SF", "ONLINE"]}
p my_bootcamp[:color]   #=> "red
p my_bootcamp['color']   #=> nil

#When initializing a hash with symbol keys, Ruby offers a shortcut. We can drop the rocket (=>) and move the colon (:) to the right of the symbol:

my_bootcamp = { name:"App Academy", color:"red", locations:["NY", "SF", "ONLINE"] }
p my_bootcamp           # => {:name=>"App Academy", :color=>"red", :locations=>["NY", "SF", "ONLINE"]}
p my_bootcamp[:color]   #=> "red

#This shortcut is only allowed when initializing the symbols in the hash. When getting a value from the hash after initialization, we must always put the colon on the left like normal. hash[:key] is the correct syntax. Writing hash[key:] is invalid.

#tl;dr you can only use ":" when initializing hash, and you can't use ":" to get a value from a hash.
