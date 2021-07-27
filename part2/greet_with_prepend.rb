class MyClass
  def greet
    'hello'
  end
end

module EnthusiasticGreetings
  def greet
    "Hey, #{super}"
  end
end

class MyClass
  prepend EnthusiasticGreetings
end

p MyClass.new.greet
p MyClass.ancestors
