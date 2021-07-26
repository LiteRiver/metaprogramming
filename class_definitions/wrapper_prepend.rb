module ExplicitModel
  def length
    super > 5 ? 'long' : 'short'
  end
end

String.class_eval do
  prepend ExplicitModel
end

puts 'War and Peace'.length