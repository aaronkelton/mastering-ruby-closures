#++
# get the current value of counter
# increment the counter
# decrement the counter
#--
class Counter
  attr_reader :x
  def initialize
    @x = 0
  end

  def increment
    @x = @x.next
  end

  def decrement
    @x = @x.pred
  end
end
