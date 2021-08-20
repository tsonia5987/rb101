VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

WIN_CONDITIONS = { rock: ['scissors', 'lizards'], paper: ['rock', 'spock'],
                   scissors: ['paper', 'lizard'], spock: ['scissors', 'rock'],
                   lizard: ['spock', 'paper'] }

SHORTHANDS = { 'r' => 'rock', 'p' => 'paper', 'sc' => 'scissors',
               'l' => 'lizard', 'sp' => 'spock' }

def win?(first, second)
  WIN_CONDITIONS[first.to_sym].include?(second)
end

def prompt(message)
  puts "=> #{message}"
end

def display_results(player, computer)
  if win?(player, computer)
    prompt "You won!"
  elsif player == computer
    prompt "It's a tie!"
  else
    prompt "You lose"
  end
end

wins_counter = { player: 0, computer: 0 }

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    elsif SHORTHANDS.has_key?(choice)
      choice = SHORTHANDS[choice]
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  if win?(choice, computer_choice)
    wins_counter[:player] += 1
  elsif win?(computer_choice, choice)
    wins_counter[:computer] += 1
  else
    wins_counter[:player] += 1
    wins_counter[:computer] += 1
  end

  if wins_counter[:player] == 3
    prompt "player is the grand winner!"
  elsif wins_counter[:computer] == 3
    prompt "computer is the grand winner!"
  else
    prompt wins_counter.to_s
  end

  prompt "Do you want to play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for playing the game. Good bye."
