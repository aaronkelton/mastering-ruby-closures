# lambda is Ruby's version of an anonymous function

chalkboard_gag = lambda do |msg| # outermost lambda returns another lambda
  # msg is the free variable relative to the inner lambda
  # everything between the lambdas is the "surrounding lexical scope"
  lambda do
    prefix = "I will not"
    "#{prefix} #{msg}"
  end
end

# How can we use `chalkboard_gag` to return "I will not drive the princpal's car"?
#
inner_lambda = chalkboard_gag.call("drive the principal's car") # returns the inner lambda
  # in my mind, the variable `inner_lambda` is now primed and ready to be called
  # the value of msg is "drive the principal's car", and is just bouncing around
