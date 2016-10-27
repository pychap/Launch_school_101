# https://github.com/haopingfan/exercise/blob/master/101/Lesson_2/rps_bonus/revised_rock_paper_scissors_bonus.rb

VALID_CHOICES = %w(rock scissors paper lizzard spock)

def integer?(string)
  /^\d+$/.match(string)
end

def prompt(message)
  Kernel.puts(">= #{message}")
end

def ask_user_name
  user_name = ''
  prompt "Please enter your name:"
  loop do
    user_name = gets.chomp
    break if user_name =~ /^[A-Za-z]+$/
    prompt "Please enter a valid name:"
  end
  user_name
end

def win?(first, second)
   (first == 'rock' && second == 'scissors') ||
   (first == 'paper' && second == 'rock') ||
   (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

# main loop
loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You choose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Would you like to play again? (y or n)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing.")
