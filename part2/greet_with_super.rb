module Greetings
  def greet
    'hello'
  end
end

module EnthusiasticGreetings
  include Greetings

  def greet
    "Hey, #{super}"
  end
end

class MyClass
  include EnthusiasticGreetings
end

p MyClass.new.greet
p MyClass.ancestors