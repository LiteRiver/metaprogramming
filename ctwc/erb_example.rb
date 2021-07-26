require 'erb'

erb = ERB.new(File.read(File.join(File.dirname(__FILE__), 'template.rhtml')))
p erb.run
