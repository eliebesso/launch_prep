CHOICES = { 'r'  => { name: 'rock', defeats: %w(sc l) },
            'p'  => { name: 'paper', defeats: %w(r sp) },
            'sc' => { name: 'scissors', defeats: %w(p l) },
            'sp' => { name: 'spock', defeats: %w(r sc) },
            'l'  => { name: 'lizard', defeats: %w(p sp) } }

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  CHOICES[first][:defeats].include?(second)
end

def display_results(player, computer, counter_player, counter_computer)
  if win?(player, computer)
    prompt "You earned 1 point!"
    prompt "You: #{counter_player} | Computer: #{counter_computer}"
  elsif win?(computer, player)
    prompt "Computer earned 1 point!"
    prompt "You: #{counter_player} | Computer: #{counter_computer}"
  else
    prompt "It's a tie."
  end
end

loop do
  counters = { counter_user: 0, counter_computer: 0, counter_round: 1 }
  loop do
  prompt "--- Round #{counters[:counter_round]} ---"
  choice = ''
  loop do
    prompt("Choose one: #{CHOICES.keys}")
    choice = Kernel.gets().chomp()
    break if CHOICES.keys.include? choice
    prompt("That's not a valid choice")
  end

  computer_choice = CHOICES.keys.sample

  prompt "You chose #{choice}: computer chose #{computer_choice}."

  if win?(choice, computer_choice)
    counters[:counter_user] += 1
  elsif win?(computer_choice, choice)
    counters[:counter_computer] += 1
  end

  counters[:counter_round] += 1

  display_results(
    choice,
    computer_choice,
    counters[:counter_user],
    counters[:counter_computer]
  )

  if counters[:counter_user] == 5
    puts "You earned 5 points. You won!"
    break
  elsif counters[:counter_computer] == 5
    puts "Computer earned 5 points. Computer won!"
    break
  end
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
