person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

person.each_key { |key| puts key }
person.each_value { |value| puts value }
person.each { |key, value| puts "The opposite of #{key} is #{value}" }
