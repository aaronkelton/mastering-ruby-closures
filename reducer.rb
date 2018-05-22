# abstract away the binary function (bi_fn)
# bi_fn has to be passed in as a lambda
# e.g. bi_fn = lambda { |x, y| x + y } // for addition
reducer = lambda do |acc, arr, bi_fn|
  if arr.empty?
    acc
  else
    reducer.call(bi_fn.call(acc, arr.first), arr.drop(1), bi_fn)
  end
end

# author doesn't like that bi_fn is being passed as 3rd arg in recursive call
# however, at the end of the day, it's called the same way by passing a 3rd arg
# interesting that it seems we're implicitly granting the reducer_aux call access
# to the bi_fn argument.
reducer = lambda do |acc, arr, bi_fn|
  # bi_fn is kinda hiding in this scope, making it a free variable
  # we could illustrate with scope model to cement the concept
  reducer_aux = lambda do |acc, arr|
    if arr.empty?
      acc
    else
      reducer_aux.call(bi_fn.call(acc, arr.first), arr.drop(1))
    end
  end
end
