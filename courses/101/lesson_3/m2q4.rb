sentence = "Humpty Dumpty sat on a wall."

words = sentence.split(/\W/)
words.reverse!
p reversed_sentence = words.join(' ') + '.'
