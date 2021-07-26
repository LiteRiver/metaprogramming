str = 'just a regular string'

def str.title?
  self.upcase == self
end

p str.methods.grep(/title\?/)
p str.singleton_methods
p str.title? if str.respond_to?(:title?)

puts '--------------'
str1 = 'anohter str'
p str1.methods.grep(/title\?/)
p str1.singleton_methods
p str1.title? if str1.respond_to?(:title?)

puts '------------------'
class MyClass
  puts respond_to?(:attr_accessor)
end
