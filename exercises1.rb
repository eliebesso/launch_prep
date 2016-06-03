arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |number| puts number if number > 5 }

arr.push(11)
arr.unshift(0)
arr.pop
arr.push(3)
puts arr
