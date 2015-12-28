def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_i_number?(num)
  num.to_i.to_s == num
end

def valide_f_number?(num)
  num.to_f.to_s == num
end

def operation_to_meesage(op)
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

prompt("Welcome to Bzol's Calculator! Enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Mmm... Does not compute")
  else
    break
  end
end

prompt("Welcome #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt("What is your first number?")
    number1 = Kernel.gets().chomp()

    if valid_i_number?(number1)
      break
    elsif valide_f_number?(number1)
      break
    else
      prompt("Hmm.... does not compute. Try again....")
    end
  end

  number2 = ''
  loop do
    prompt("What is your second number?")
    number2 = Kernel.gets().chomp()

    if valid_i_number?(number2)
      break
    elsif valide_f_number?(number2)
      break
    else prompt("Hmm.... does not compute. Try again....")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_meesage(operator)} the two number.....")

  result = case operator
           when '1'
             number1.to_f() + number2.to_f()
           when '2'
             number1.to_f() - number2.to_f()
           when '3'
             number1.to_f() * number2.to_f()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}")

  prompt("Do you want me to perform another calculation? (y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thanks for using Bzol Calculator. Have a nice day #{name}!")
