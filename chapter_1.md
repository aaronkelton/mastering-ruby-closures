# Test Your Understanding!

1. What is the definition of a closure?
A closure is a function that can be called with or without arguments. The body of the function (the bits between the `do` and `end`) needs to have a variable that is in turn used in a lambda. This "parent" scope may or may not be spawned via its own lambda. Our Notifier class didn't have a parent lambda.

2. Identify the free variable in the following:

```ruby
def is_larger_than(amount)
  lambda do |a|
    a > amount
  end
end
```

The free variable is `amount`, passed into the function as an argument and immediately available to all subsequent scopes.

3. Database storing artist and album. Only allowed to insert, delete, and list. No objects; only arrays and hashes. Write a mini database given that:

```bash
db = new_db.call
db[:insert].call("Eagles", "Hell Freezes Over")
# => "Hell Freezes Over"
db[:insert].call("Pink Floyd", "The Wall")
# => "The Wall"
db[:dump].call
# => {"Eagles"=> "Hell Freezes Over", "Pink Floyd" => "The Wall"}
db[:delete].call("Pink Floyd")
# => "The Wall" // author leaves off quotes for string .. errata
db[:dump].call
# => {"Eagles"=> "Hell Freezes Over", "Pink Floyd" => nil}
```

```ruby
new_db = lambda do |artist, album|
  x = {} # could also do: Hash.new
  insert = lambda { x[artist] = album }
  dump   = lambda { x }
  delete = lambda { x.delete(artist) }
  { dump: dump, insert: insert, delete: delete }
end
```

4. Complement method was defined as follows. Convert it to a lambda that returns another lambda. Then you should be able to invoke it like `complement.call(is_even).call(4)` (returns false)

```ruby
def complement(predicate)
  lambda do |value|
    not predicate.call(value)
  end
end
```

```ruby
complement = lambda do |predicate|
  # predicate is a free variable
  is_even = lambda { |number| number % 2 == 0 }
  is_odd  = lambda { |number| number % 2 != 0 }
end
```

5. Take an array `arr = [1,2,3,4,5]` and using `#reduce()` to return `[2,4,6,8,10]`. Are we using Ruby's `#reduce()` or the reduce method we wrote earlier?

```ruby
arr = [1,2,3,4,5]
:times_two = lambda do |arr|
  arr.map do |el|
    el * 2
  end
end
arr.reduce(:times_two)
```
