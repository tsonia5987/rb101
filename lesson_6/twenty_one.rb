require 'pry'

SUITS = ['H', 'D', 'C', 'S']
VALUES = (2..10).to_a.map {|v| v.to_s} + ['J', 'Q', 'K', 'A']

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

def busted?(hand)
  total(hand) > 21 ? true : false
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
    sum -= 10 if sum > 21
  end

  sum
end

def detect_winner(player_hand, dealer_hand)
  player_total = total(player_hand)
  dealer_total = total(dealer_hand)
  if player_total > dealer_total
    'Player'
  elsif dealer_total > player_total
    'Dealer'
  else
    nil
  end
end

def display_winner(winner, player_hand, dealer_hand)
  prompt "Player hand: #{player_hand}"
  prompt "Player hand total: #{total(player_hand)}"
  prompt "Dealer hand: #{dealer_hand}"
  prompt "Dealer hand total: #{total(dealer_hand)}"
  if winner == nil
    prompt "It's a tie!"
  else
    prompt "#{winner} wins!"
  end
end

loop do
  response = nil

  loop do
    system("clear")

    deck = initialize_deck
    player_hand = select_cards(deck, 2)
    dealer_hand = select_cards(deck, 2)
    prompt "Dealer hand: #{dealer_hand}"

    answer = nil
    loop do
      prompt "Your hand: #{player_hand}"
      prompt "Your total: #{total(player_hand)}"
      prompt "hit or stay?"
      answer = gets.chomp
      break if answer == 'stay'
      player_hand += select_cards(deck, 1)
      break if busted?(player_hand)
    end

    if busted?(player_hand)
      prompt "Your hand: #{player_hand}"
      prompt "Your total: #{total(player_hand)}"
      prompt "You were busted! Play again? (y/n)"
      response = gets.chomp
      break
    else
      prompt "You chose to stay!"
    end

    loop do
      break if total(dealer_hand) >= 17
      dealer_hand += select_cards(deck, 1)
      break if busted?(dealer_hand)
    end

    if busted?(dealer_hand)
      prompt "Dealer hand: #{dealer_hand}"
      prompt "Dealer hand total: #{total(dealer_hand)}"
      prompt "Dealer was busted! Play again? (y/n)"
      response = gets.chomp
      break
    else
      prompt "Dealer chose to stay!"
    end

    winner = detect_winner(player_hand, dealer_hand)
    display_winner(winner, player_hand, dealer_hand)

    prompt "Play again? (y/n)"
    response = gets.chomp
    break
  end
  break unless response.downcase == 'y'
end