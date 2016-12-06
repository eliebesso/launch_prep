def caps(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts caps("Eri Gomes")
puts caps("Elias Besso")
