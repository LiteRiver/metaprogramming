def a_method(a, b)
  a + yield(a, b) if block_given?
end

puts a_method(1, 2) { |x, y| (x + y) * 3 }
puts '------------------------'

def b_method
  return yield if block_given?

  'no block'
end

puts b_method
puts b_method { 'there is a block' }
