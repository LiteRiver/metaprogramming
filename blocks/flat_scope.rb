my_var = 'Success'

MyClass = Class.new do
  puts "#{my_var} in the class definition!"

  define_method :my_method do
    puts "#{my_var} in the method"
  end
end

obj = MyClass.new
obj.my_method
