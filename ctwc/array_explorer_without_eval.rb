def explore_array(method, *args)
  %w[a b c].send(method, *args)
end

p loop { explore_array }
