def create_uuid
  first_section = [*('a'..'f'),*('0'..'9')].shuffle[0,8].join
  second_section = [*('a'..'f'),*('0'..'9')].shuffle[0,4].join
  third_section = [*('a'..'f'),*('0'..'9')].shuffle[0,4].join
  forth_section = [*('a'..'f'),*('0'..'9')].shuffle[0,4].join
  fifth_section = [*('a'..'f'),*('0'..'9')].shuffle[0,12].join

puts "#{first_section}-#{second_section}-#{third_section}-#{forth_section}-#{fifth_section}"

end

create_uuid
