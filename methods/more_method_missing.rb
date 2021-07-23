class Lawyer
  def method_missing(method, *args)
    puts "You called: #{method} (#{args.join(', ')})"
    puts '(You also passed it a block)' if block_given?
  end
end

bob = Lawyer.new

bob.talk_simple('a', 'b') do
  # nothing
end
puts '---------------------'
bob.talk_simple1 = 2
puts '---------------------'
bob.talk_simple2!('hahah')
puts '---------------------'
bob.talk_simple3?('c', 'd')
