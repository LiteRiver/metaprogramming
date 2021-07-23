class MyClass
  def initialize
    @v = 1
  end
end

obj = MyClass.new

obj.instance_eval {
  p self
  p @v
}

puts '--------------------'
v2 = 2
obj.instance_eval { @v = v2}
obj.instance_eval { p @v }