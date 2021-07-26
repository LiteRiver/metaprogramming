class MyClass
  def my_method
    @x = 1
    binding
  end
end

b = MyClass.new.my_method

puts eval('@x', b, __FILE__, __LINE__)

puts '-------------------------'
top_level_var = 'hello'
class AnotherClass
  def my_method
    [
      eval('self', TOPLEVEL_BINDING, __FILE__, __LINE__),
      eval('top_level_var', TOPLEVEL_BINDING, __FILE__, __LINE__)
    ]
  end
end
p AnotherClass.new.my_method
