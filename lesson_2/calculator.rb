Kernel.puts ("Type 2 numbers")
first = Kernel.gets().chomp()
second = Kernel.gets().chomp()
Kernel.puts ("What's the operation? add, subtract, multiply, divide")
operation = Kernel.gets().chomp()
if operation == "add"
  Kernel.puts first.to_i() + second.to_i()
elsif operation == "subtract"
  Kernel.puts first.to_i() - second.to_i()
elsif operation == "multiply"
  Kernel.puts first.to_i() * second.to_i()
else operation == "divide"
  Kernel.puts first.to_f() / second.to_f()
end
