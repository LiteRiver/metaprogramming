lambda {
  setups = []
  events = []

  Kernel.send :define_method, :setup do |&block|
    setups << block
  end

  Kernel.send :define_method, :event do |descr, &block|
    events << { descr: descr, condition: block }
  end

  Kernel.send :define_method, :each_setup do |&block|
    setups.each do |setup|
      block.call(setup)
    end
  end

  Kernel.send :define_method, :each_event do |&block|
    events.each do |event|
      block.call(event)
    end
  end
}.call

load File.join(File.dirname(__FILE__), 'events.rb')

env = Object.new
each_event do |event|
  each_setup do |setup|
    env.instance_eval(&setup)
  end

  puts "ALERT: #{event[:descr]}" if env.instance_eval(&(event[:condition]))
end
puts '--------------------'
puts @sky_height
