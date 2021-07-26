module MyModule
  def my_method
    'hello'
  end
end

class MyClass
  class << self
    include MyModule
  end
end

puts MyClass.my_method
puts '----------object extend----------'
obj = Object.new

class << obj
  include MyModule
end

puts obj.my_method