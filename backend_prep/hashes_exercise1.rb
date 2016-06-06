family = { uncles: ["bob", "joe", "steve"],
           sisters: ["jane", "jill", "beth"],
           brothers: ["frank", "rob", "david"],
           aunts: ["mary", "sally", "susan"]
         }

v = family.select { |k,v| (k == :sisters) || (k == :brothers) }

puts v.to_a
