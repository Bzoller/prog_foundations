VALID_CHOICES = %w(Rock Paper Scissors)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'Rock' && second == 'Scissors') ||
    (first == 'Paper' && second == 'Rock') ||
    (first == 'Scissors' && second == 'Paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("WHAT! You must have cheated!")
  elsif win?(computer, player)
    prompt("Ro Sham Beaux 5000 Won! I am unstoppable!")
  else
    prompt("You got lucky. Its a tie")
  end
end

prompt("Hello, I am the unbeatable Ro Sham Beaux 5000")

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()
    choice.capitalize!

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Mmm... does not compute. Try again...")
    end
  end

  prompt("RO!...
    SHAM!....
    BEAUX!...")

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}")
  prompt("Ro Sham Beaux 5000 chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Would you like to try your luck again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thanks for playing Ro Sham Beaux 5000!")
prompt("Good bye!")
