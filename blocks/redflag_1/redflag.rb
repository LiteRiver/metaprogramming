def event(description)
  puts "ALERT: #{description}" if yield
end

load File.join(File.dirname(__FILE__), 'events.rb')
