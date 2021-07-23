3.times do
  class C
    puts 'Hello'
  end
end

class D
  def x
    'x'
  end
end

class D
  def y
    'y'
  end
end

puts '---------------------------'
obj = D.new
puts obj.x
puts obj.y

module M
  class C
    module M2
      p Module.nesting
    end
  end
end
