
counts = Hash.new(0)
statement = "The Flintstones Rock"
statement.gsub(' ','').chars.each { |i| counts[i] += 1 }

puts counts
