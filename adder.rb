# using Ruby's built-in reduce method
[1,2,3,4,5].reduce(10) do |acc, x|
  puts "#{acc}, #{x}"
  acc + x
end

# -----------

# create a function called `adder` to call with two params
arr = [1,2,3,4,5]
acc = 10
adder.call(acc, arr)

# -----------

# transform the implementation pseudo-ish code to a lambda definition
adder = lambda do |acc, arr| # fold left onto the acc`umulator
  # implementation details
end

# -----------

# handle the case for an empty array
adder = lambda do |acc, arr| # fold left onto the acc`umulator
  if arr.empty?
    acc
  else
    # implementation details
  end
end

# -----------

# recursively call the adder function
adder = lambda do |acc, arr|
  if arr.empty?
    acc
  else
    adder.call(acc + arr.first, arr.drop(1)) # does call take two params?
  end
end

# -----------

# transfrom the variable into a proper method?
# DOES NOT WORK
def adder(acc, arr)
  lambda do |acc, arr|
    if arr.empty?
      acc
    else
      self.call(acc + arr.first, arr.drop(1))
    end
  end
end
