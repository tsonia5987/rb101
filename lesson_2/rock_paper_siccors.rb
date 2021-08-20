VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

WIN_CONDITIONS = {rock: ['scissors', 'lizards'], paper: ['rock', 'spock'], 
  scissors: ['paper', 'lizard'], spock: ['scissors', 'rock'], 
  lizard: ['spock', 'paper']}

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'lizard' && second == 'paper')
end

def prompt(message)
  puts "=> #{message}"
end

test_method

def display_results(player, computer)
  if win?(player, computer)
    prompt "You won!"
  elsif player == computer
    prompt "It's a tie!"
  else
    prompt "You lose"
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt "Do you want to play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for playing the game. Good bye."
