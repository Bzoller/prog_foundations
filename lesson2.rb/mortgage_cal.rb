def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  prompt("Welcome to Mortgage Calculator 5000!")
  prompt(" ")

  prompt("Input your loan amount....")

  amount = ''
  loop do
    amount = Kernel.gets().chomp()

    if amount.empty?() || amount.to_f() < 0
      prompt("Mmm... does not compute!")
      prompt("Must enter valid number. Try again....")
    else
      break
    end
  end

  prompt("What is the interest rate?")
  prompt("Example: 3 for 3% or 2.5 for 2.5%")
  prompt(" ")

  interest_rate = ''
  loop do
    interest_rate = Kernel.gets().chomp()

    if interest_rate.empty?() || interest_rate.to_f() < 0
      promot("Mmm... does not compute!")
      promot("Must enter a valid number. Try again....?")
    else
      break
    end
  end

  prompt("How many years is your loan?")

  years = ''
  loop do
    years = Kernel.gets().chomp()

    if years.empty?() || years.to_i() < 0
      prompt("Mmm... does not compute.")
      prompt("Must enter a valid number. Try Again...")
    else
      break
    end
  end

  prompt("Computing.......")
  prompt(" ")

  annual_interest_rate = interest_rate.to_f() / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = years.to_i() * 12

  monthly_paments = amount.to_f() * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**-months.to_i()))

  prompt("Your monthly payments will be: $#{format('%02.2f', monthly_paments)}")
  prompt("------------------")

  prompt("Would you like another calutation?")
  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end

prompt("Thanks for using Mortgage Calculator 5000!")
prompt("Good bye!")
