# ask the user for two numbers
# ask the user for the type of operation to perform
# perform the operation on the two numbers
# outpu the result

Kernel.puts("Welcome to Bzol's Calculator!")

Kernel.puts("What is your first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What is your second number?")
number2 = Kernel.gets().chomp()

Kernel.puts("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == '1'
	result = number1.to_i() + number2.to_i()
elsif operator == '2'
	result = number1.to_i() - number2.to_i()
elsif operator == '3'
	result = number1.to_i() * number2.to_i()
else operator == '4'
	result = number1.to_f() / number2.to_f()
end

Kernel.puts(" The result is #{result}")

				