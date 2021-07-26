class Integer
  alias_method :old_plus, :+

  def +(value)
    self.old_plus(value).old_plus(value)
  end
end

puts "1 + 1 = #{ 1 + 1 }"
puts "2 + 2 = #{ 2 + 2 }"