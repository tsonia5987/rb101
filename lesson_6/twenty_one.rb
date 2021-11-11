require 'pry'

SUITS = ['H', 'D', 'C', 'S']
VALUES = (2..10).to_a.map(&:to_s) + ['J', 'Q', 'K', 'A']
BUST_VALUE = 21
DEALER_HIT_UNTIL = 17

def prompt(msg)
  puts "==> #{msg}"
end

def initialize_deck
  deck = []
  SUITS.each do |suit|
    VALUES.each do |value|
      deck << [suit, value]
    end
  end
  deck
end

def select_cards(deck, num_cards)
  hand = []
  num_cards.times do
    card =  deck.sample
    hand << card
    deck.delete(hand)
  end
  hand
end

def busted?(total)
  total > BUST_VALUE
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > BUST_VALUE
  end

  sum
end

def detect_winner(player_total, dealer_total)
  if player_total > dealer_total
    'Player'
  elsif dealer_total > player_total
    'Dealer'
  end
end

def display_winner(winner, player_total, dealer_total)
  if !winner
    prompt "It's a tie!"
  else
    prompt "#{winner} wins!"
  end
end

def play_again?
  prompt "Play again? (y/n)"
  response = gets.chomp
  response.downcase == 'y'
end

def display_stats(player_hand, player_total, dealer_hand, dealer_total)
  puts "=============="
  prompt "Dealer has #{dealer_hand}, for a total of: #{dealer_total}"
  prompt "Player has #{player_hand}, for a total of: #{player_total}"
  puts "=============="
end

def detect_tournament_winner(points)
  if points['Player'] >= 5
    'Player'
  elsif points['Dealer'] >= 5
    'Dealer'
  end
end
    

loop do
  points = { 'Player' => 0, 'Dealer' => 0 }

  loop do
    system("clear")
    prompt "Player: #{points['Player']} Dealer: #{points['Dealer']}"

    deck = initialize_deck
    player_hand = select_cards(deck, 2)
    dealer_hand = select_cards(deck, 2)
    player_total = total(player_hand)
    dealer_total = total(dealer_hand)
    prompt "Dealer hand: #{dealer_hand[0]} and ?"

    answer = nil
    loop do
      prompt "Your hand: #{player_hand}"
      prompt "Your total: #{player_total}"
      prompt "hit or stay?"
      answer = gets.chomp
      break if answer == 'stay'
      player_hand += select_cards(deck, 1)
      player_total = total(player_hand)
      break if busted?(player_total)
    end

    if busted?(player_total)
      prompt "You were busted!"
      display_stats(player_hand, player_total, dealer_hand, dealer_total)
      points['Dealer'] += 1
      !detect_tournament_winner(points) && play_again? ? next : break
    else
      prompt "You chose to stay!"
    end

    loop do
      break if dealer_total >= DEALER_HIT_UNTIL
      dealer_hand += select_cards(deck, 1)
      dealer_total = total(dealer_hand)
    end

    if busted?(dealer_total)
      prompt "Dealer was busted!"
      display_stats(player_hand, player_total, dealer_hand, dealer_total)
      points['Player'] += 1
      !detect_tournament_winner(points) && play_again? ? next : break
    else
      prompt "Dealer chose to stay!"
    end

    display_stats(player_hand, player_total, dealer_hand, dealer_total)

    winner = detect_winner(player_total, dealer_total)
    display_winner(winner, player_total, dealer_total)
    points[winner] += 1 if winner

    break unless !detect_tournament_winner(points) && play_again?
  end

  prompt "#{detect_tournament_winner(points)} wins the tournament!" if detect_tournament_winner(points)
  break unless play_again?
end