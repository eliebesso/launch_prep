require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

name = ''
loop do
  prompt(MESSAGES['welcome'])
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}!")

loop do
  first = ''

  loop do
    prompt(MESSAGES['first_number'])
    first = Kernel.gets().chomp()

    if number?(first)
      break
    else
      prompt(MESSAGES['not_valid_number'])
    end
  end

  second = ''

  loop do
    prompt(MESSAGES['second_number'])
    second = Kernel.gets().chomp()

    if number?(second)
      break
    else
      prompt(MESSAGES['not_valid_number'])
    end
  end

  operation_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operation_prompt)

  operation = ''
  loop do
    operation = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt(MESSAGES['must_choose'])
    end
  end

  prompt("#{operation_to_message(operation)} the two numbers...")

  result = case operation
           when '1'
             first.to_i() + second.to_i()
           when '2'
             first.to_i() - second.to_i()
           when '3'
             first.to_i() * second.to_i()
           when '4'
             first.to_f() / second.to_f()
           end

  prompt("The result is #{result}")

  prompt(MESSAGES['another_calculation'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['bye'])
