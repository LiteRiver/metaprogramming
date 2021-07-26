module MyModule
  def my_method
    'hello'
  end
end

class MyClass
  extend MyModule
end

obj = Object.new
obj.extend(MyModule)
puts obj.my_method
puts '------------------'
puts MyClass.my_method