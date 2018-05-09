# run this code in irb

# A closure is a function whose body references a variable that is declared in the parent scope.

# lexical scoping == static scoping == "eyeball" scoping

# the scope that msg is declared in is considered the parent of the scope created
# by the 3.times do/end block
msg = "drive the principal's car"
# this is all outer scope

3.times do
  # this is all inner scope and has access to msg
  prefix = "I will not"
  puts "#{prefix} #{msg}"
end

# outer scope still doesn't have access to prefix
