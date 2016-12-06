arr = ["joao", "jose", "maria"]

arr.each_with_index do | name, index |
  puts "#{index + 1}. #{name}"
end
