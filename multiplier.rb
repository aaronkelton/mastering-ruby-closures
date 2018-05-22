multiplier = lambda do |acc, arr|
  if arr.empty?
    acc
  else
    multiplier.call(acc * arr.first, arr.drop(1))
  end
end
