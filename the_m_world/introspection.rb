# frozen_string_literal: true

class Greeting
  def initialize(text)
    @text = text
  end

  def welcome
    @text
  end
end

my_object = Greeting.new('Hello')
puts 'class =>'
p my_object.class
puts 'instance methods =>'
p my_object.class.instance_methods(false)
puts 'instance variables =>'
p my_object.instance_variables
