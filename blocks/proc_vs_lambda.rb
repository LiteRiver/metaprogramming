def double(callable_object)
  callable_object.call * 2
end

# return in lambda just return from lambda
l = -> { return 10 }
puts double(l)

puts '------------------------'

# return in proc return from the scope where the proc itself was defined
def another_double
  p = proc { return 10 }
  result = p.call

  result * 2
end

puts another_double
